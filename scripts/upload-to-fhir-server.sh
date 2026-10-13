#!/bin/bash
# Uploads conformance resources and examples from output/ to a FHIR server (PUT by id).
# Resources with dependencies (references to other examples) are handled by retrying
# failed resources in multiple passes until no more progress is made; whatever still
# fails is reported (HTTP 400, 422, ...). Exit code 1 if any failed.
# Env: FHIR_SERVER_URL (required), FHIR_SERVER_TOKEN (optional bearer token)
set -u
: "${FHIR_SERVER_URL:?FHIR_SERVER_URL is required}"
BASE="${FHIR_SERVER_URL%/}"
DIR="${1:-output}"
SUMMARY="${GITHUB_STEP_SUMMARY:-/dev/null}"
auth=()
[ -n "${FHIR_SERVER_TOKEN:-}" ] && auth=(-H "Authorization: Bearer ${FHIR_SERVER_TOKEN}")

CONF="CodeSystem ValueSet StructureDefinition SearchParameter CapabilityStatement OperationDefinition"
pending=()
for t in $CONF; do
  for f in "$DIR/$t"-*.json; do [ -f "$f" ] && pending+=("$f"); done
done
for f in "$DIR"/*.json; do
  b=$(basename "$f")
  case "$b" in CodeSystem-*|ValueSet-*|StructureDefinition-*|SearchParameter-*|CapabilityStatement-*|OperationDefinition-*|ImplementationGuide-*) continue;; esac
  pending+=("$f")
done

# keep only real FHIR resources named <Type>-<id>.json (skips derived files)
valid=()
for f in "${pending[@]}"; do
  type=$(jq -r '.resourceType // empty' "$f" 2>/dev/null); id=$(jq -r '.id // empty' "$f" 2>/dev/null)
  [ -n "$type" ] && [ -n "$id" ] && [ "$(basename "$f")" = "$type-$id.json" ] && valid+=("$f")
done
pending=("${valid[@]}")

ok=0; pass=0
declare -A lastmsg
while [ ${#pending[@]} -gt 0 ]; do
  pass=$((pass+1)); next=()
  for f in "${pending[@]}"; do
    type=$(jq -r '.resourceType' "$f"); id=$(jq -r '.id' "$f")
    code=$(curl -s -o /tmp/resp.json -w '%{http_code}' -X PUT "$BASE/$type/$id" \
      -H 'Content-Type: application/fhir+json' "${auth[@]}" --data-binary @"$f")
    if [[ "$code" =~ ^2 ]]; then
      ok=$((ok+1))
    else
      msg=$(jq -r '[.issue[]? | "\(.severity): \(.diagnostics // .details.text // .code)"] | join("; ")' /tmp/resp.json 2>/dev/null)
      lastmsg[$f]="HTTP $code $type/$id $msg"
      next+=("$f")
    fi
  done
  echo "Pass $pass: ${#next[@]} of ${#pending[@]} failed"
  # stop when no progress (all remaining failed again) or too many passes
  [ ${#next[@]} -eq ${#pending[@]} ] || [ $pass -ge 10 ] && { pending=("${next[@]}"); break; }
  pending=("${next[@]}")
done

echo "## FHIR server upload ($BASE)" >> "$SUMMARY"
for f in "${pending[@]}"; do
  echo "::error file=$f::${lastmsg[$f]}"
  echo "- ❌ \`$f\`: ${lastmsg[$f]}" >> "$SUMMARY"
done
echo "Uploaded OK: $ok, failed: ${#pending[@]}"
echo "**OK: $ok, failed: ${#pending[@]}**" >> "$SUMMARY"
[ ${#pending[@]} -eq 0 ]
