# Example Hook: Forbidden Paths

This hook exists to stop Codex from editing high-risk or low-value paths without explicit approval.

## What it protects

- generated files
- vendored dependencies
- migration snapshots
- lockfiles when the task is not dependency-related
- infrastructure or secrets files

## Why it matters

Teams often discover too late that an agent wandered into the wrong files. A forbidden-path hook turns that into an immediate, visible stop instead of a cleanup problem later.

## Recommended behavior

- Default to blocking.
- Return a clear message naming the forbidden path.
- Tell the user or agent how to proceed if the change is intentional.

## Example block message

`Blocked: edits to db/migrations require explicit approval for this repo.`

## Suggested first version

Start with a short allowlist or denylist, not a complex policy engine.

Example categories:

- `dist/`
- `vendor/`
- `node_modules/`
- `db/migrations/`
- `.env*`
- `secrets/`

## Rollout advice

- Begin with the highest-risk paths only.
- Review false positives after the first week.
- Add paths only when they are repeatedly problematic.
