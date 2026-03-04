#!/usr/bin/env bash

set -euo pipefail

input=$(cat)

model=$(echo "$input" | jq -r '.model.display_name')
used=$(echo "$input" | jq -r '.context_window.used_percentage // 0')

printf "%s: %s%%" "$model" "$used"
