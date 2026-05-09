#!/bin/sh
set -eu

forbidden_patterns='^db/migrations/|^vendor/|^dist/|^node_modules/|^secrets/|^\.env'

changed_files="${1:-}"

if [ -z "$changed_files" ]; then
  exit 0
fi

echo "$changed_files" | tr ' ' '\n' | grep -E "$forbidden_patterns" >/dev/null 2>&1 || exit 0

echo "Blocked: this task touches protected paths. Request explicit approval before proceeding."
exit 1
