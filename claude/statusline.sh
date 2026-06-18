#!/usr/bin/env bash

set -euo pipefail

input=$(cat)
#input=""

model=$(echo "$input" | jq -r '.model.display_name')
used=$(echo "$input" | jq -r '.context_window.used_percentage // 0')

jbcentral_out=$(jbcentral quota 2>/dev/null)

# shellcheck disable=SC2016
usage=$(sed -nE 's/^Usage: \$([0-9.]+).*/\1/p' <<<"$jbcentral_out")
usage_percent=$(sed -nE 's/.*\(([0-9.]+)%\).*/\1/p' <<<"$jbcentral_out")
reset=$(sed -nE 's/^Resets: (.+),.+/\1/p' <<<"$jbcentral_out")

printf "%s: %s%% | $%s (%s%%) %s" "$model" "$used" "$usage" "$usage_percent" "$reset"
