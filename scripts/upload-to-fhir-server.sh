#!/bin/bash
# Uploads conformance resources and examples from output/ to a FHIR server (PUT by id)
# and reports every HTTP error (400, 422, ...). Exit code 1 if any failed.
# Env: FHIR_SERVER_URL (required), FHIR_SERVER_TOKEN (optional bearer token)
set -u
: "${FHIR_SERVER_URL:?FHIR_SERVER_URL is required}"
BASE="${FHIR_SERVER_URL%/}"
DIR="${1:-output}"
auth=()
[ -n "${FHIR_SERVER_TOKEN:-}" ] && auth=(-H "Authorization: Bearer $FHIR_SERVER_TOKEN")
fail=0; ok=0
SUMMARY="${GITHUB_STEP_SUMMARY:-/dev/null}"
echo "## FHIR server upload ($BASE)" >> "$SUMMARY"

upload() {
  local f="$1" type id code
  type=$(jq -r '.resourceType // empty' "$f" 2>/dev/null) || return
  id=$(jq -r '.id // empty' "$f")
  [ -z "$type" ] || [ -z "$id" ] && return
  [ "$(basename "$f")" = "$type-$id.json" ] || return   # skip derived files (.change.history, etc.)
  [ "$type" = "ImplementationGuide" ] && return
  code=$(curl -s -o /tmp/resp.json -w '%{http_code}' -X PUT "$BASE/$type/$id" \
    -H 'Content-Type: application/fhir+json' "${auth[@]}" --data-binary @"$f")
  if [[ "$code" =~ ^2 ]]; then
    ok=$((ok+1))
  else
    fail=$((fail+1))
    msg=$(jq -r '[.issue[]? | "\(.severity): \(.diagnostics // .details.text // .code)"] | join("; ")' /tmp/resp.json 2>/dev/null)
    echo "::error file=$f::HTTP $code $type/$id $msg"
    echo "- ❌ HTTP $code \`$type/$id\`: $msg" >> "$SUMMARY"
  fi
}

# conformance resources first, then examples
for t in CodeSystem ValueSet StructureDefinition SearchParameter CapabilityStatement OperationDefinition; do
  for f in "$DIR/$t"-*.json; do [ -f "$f" ] && upload "$f"; done
done
for f in "$DIR"/*.json; do
  case "$(basename "$f")" in CodeSystem-*|ValueSet-*|StructureDefinition-*|SearchParameter-*|CapabilityStatement-*|OperationDefinition-*) continue;; esac
  upload "$f"
done

echo "Uploaded OK: $ok, failed: $fail"
echo "**OK: $ok, failed: $fail**" >> "$SUMMARY"
[ "$fail" -eq 0 ]
