#!/bin/sh
set -eu

content="${1:-}"

if echo "$content" | grep -E 'sk-[A-Za-z0-9]|AKIA[0-9A-Z]{16}|BEGIN PRIVATE KEY' >/dev/null 2>&1; then
  echo "Blocked: potential secret material detected."
  exit 1
fi
