#!/usr/bin/env python3
"""Upload IG resources (profiles, extensions, terminology, examples) to a FHIR server.

Resources are sent as transaction Bundles with PUT entries, in batches, so the server
resolves dependencies between resources inside the same batch. A failed batch is split
in halves to isolate the offending resource(s). Resources that still fail are retried
in further passes (their dependencies may have been stored meanwhile) until no progress
is made. Remaining errors (HTTP 400, 422, ...) are reported; exit code 1 if any.

Usage: upload_to_fhir_server.py [output_dir] [batch_size]
Env:   FHIR_SERVER_URL (required), FHIR_SERVER_TOKEN (optional bearer token)
"""
import glob, json, os, sys, urllib.request, urllib.error

BASE = os.environ["FHIR_SERVER_URL"].rstrip("/")
TOKEN = os.environ.get("FHIR_SERVER_TOKEN")
DIR = sys.argv[1] if len(sys.argv) > 1 else "output"
BATCH = int(sys.argv[2]) if len(sys.argv) > 2 else 50
MAX_PASSES = 10
CONF = ["CodeSystem", "ValueSet", "StructureDefinition", "SearchParameter",
        "CapabilityStatement", "OperationDefinition"]
SKIP = {"ImplementationGuide"}


def load():
    items = []
    for f in sorted(glob.glob(os.path.join(DIR, "*.json"))):
        try:
            r = json.load(open(f, encoding="utf-8"))
        except Exception:
            continue
        if not isinstance(r, dict) or not r.get("resourceType") or not r.get("id"):
            continue
        t, i = r["resourceType"], r["id"]
        if t in SKIP or os.path.basename(f) != f"{t}-{i}.json":
            continue  # skip derived files
        items.append((0 if t in CONF else 1, f, r))
    items.sort(key=lambda x: x[0])
    return [(f, r) for _, f, r in items]


def post(batch):
    bundle = {"resourceType": "Bundle", "type": "transaction", "entry": [
        {"resource": r, "request": {"method": "PUT", "url": f"{r['resourceType']}/{r['id']}"}}
        for _, r in batch]}
    headers = {"Content-Type": "application/fhir+json", "Accept": "application/fhir+json"}
    if TOKEN:
        headers["Authorization"] = "Bearer " + TOKEN
    req = urllib.request.Request(BASE, json.dumps(bundle).encode(), headers, method="POST")
    try:
        with urllib.request.urlopen(req, timeout=300) as resp:
            return resp.status, ""
    except urllib.error.HTTPError as e:
        body = e.read().decode("utf-8", "replace")
        try:
            msg = "; ".join(
                f"{i.get('severity')}: {i.get('diagnostics') or (i.get('details') or {}).get('text') or i.get('code')}"
                for i in json.loads(body).get("issue", []))
        except Exception:
            msg = body[:300]
        return e.code, msg
    except Exception as e:
        return 0, str(e)


def send(batch, failed, errors):
    """Send batch; on failure bisect. Single failing resources go to `failed`."""
    code, msg = post(batch)
    if 200 <= code < 300:
        return len(batch)
    if len(batch) == 1:
        f, r = batch[0]
        failed.append(batch[0])
        errors[f] = f"HTTP {code} {r['resourceType']}/{r['id']} {msg}"
        return 0
    mid = len(batch) // 2
    return send(batch[:mid], failed, errors) + send(batch[mid:], failed, errors)


def main():
    pending, ok, errors = load(), 0, {}
    for n in range(1, MAX_PASSES + 1):
        failed = []
        before = len(pending)
        for i in range(0, len(pending), BATCH):
            ok += send(pending[i:i + BATCH], failed, errors)
        print(f"Pass {n}: {len(failed)} of {before} failed")
        pending = failed
        if not pending or len(failed) == before:
            break
    summary = os.environ.get("GITHUB_STEP_SUMMARY")
    lines = [f"## FHIR server upload ({BASE})"]
    for f, _ in pending:
        print(f"::error file={f}::{errors[f]}")
        lines.append(f"- ❌ `{f}`: {errors[f]}")
    lines.append(f"**OK: {ok}, failed: {len(pending)}**")
    print(lines[-1])
    if summary:
        open(summary, "a", encoding="utf-8").write("\n".join(lines) + "\n")
    sys.exit(1 if pending else 0)


if __name__ == "__main__":
    main()
