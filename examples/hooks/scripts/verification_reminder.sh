#!/bin/sh
set -eu

changed_files="${1:-}"

if [ -z "$changed_files" ]; then
  exit 0
fi

if echo "$changed_files" | grep -E '\.(tsx|jsx|css|scss)$|^src/|^components/' >/dev/null 2>&1; then
  echo "Reminder: frontend files changed. Add visual verification before closing the task."
  exit 0
fi

if echo "$changed_files" | grep -E '^prompts/|^agents/|prompt' >/dev/null 2>&1; then
  echo "Reminder: prompt or agent files changed. Rerun baseline eval cases."
  exit 0
fi

if echo "$changed_files" | grep -E '\.(py|go|rb|java|ts)$|^api/|^services/' >/dev/null 2>&1; then
  echo "Reminder: backend logic changed. Run targeted tests before broad integration checks."
fi
