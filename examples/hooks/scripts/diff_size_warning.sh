#!/bin/sh
set -eu

count="${1:-0}"
threshold="${2:-20}"

if [ "$count" -gt "$threshold" ]; then
  echo "Warning: this task touches more than $threshold files. Re-check whether the scope is still surgical."
fi
