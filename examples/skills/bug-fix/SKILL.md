---
name: "bug-fix"
description: "Reproduce a bug, isolate the smallest correct patch, and verify it without unrelated cleanup."
---

# Bug Fix

Use this skill when the task is to diagnose and fix a specific bug with enough information to verify the result.

## Use this skill when

- A failing test already exists.
- The user has provided reproduction steps.
- The bug can be validated through deterministic checks.
- The scope should remain narrow and behavior-preserving.

## Do not use this skill when

- The reported problem is actually a feature request.
- Product requirements are still ambiguous.
- The task is mainly a broad refactor.
- The verification path is unclear and no reproduction exists.

## Inputs expected

- Reproduction steps or a failing test
- Relevant module or feature area
- Expected behavior after the fix
- Preferred verification command if one is known

## Workflow

1. Read the relevant files before editing anything.
2. Reproduce the current failure or confirm the failing test.
3. Identify the smallest likely root-cause area.
4. Patch the issue without unrelated cleanup or refactors.
5. Add or update a regression test if the repo supports it.
6. Rerun the specific verification check first.
7. Rerun nearby checks if the change could have local side effects.

## Verification

- Reproduce before patching when feasible.
- Confirm the same scenario passes after the fix.
- Prefer targeted tests first, then nearby regression checks.
- Record any verification gaps if full verification is not possible.

## Output shape

- Root cause
- Files changed
- Verification performed
- Remaining risks or unverified edges

## Design notes

- Favor minimal diffs.
- Avoid treating a bug-fix task as permission to modernize adjacent code.
- If the issue cannot be reproduced, say so early and state what evidence is missing.
