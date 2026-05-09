# Hooks Policy

Hooks are for automatic enforcement and reminders. They are not a place to hide product logic.

Use hooks when a check should happen every time, regardless of who is driving Codex.

## What hooks are good for

- Secret scanning
- Blocking forbidden paths
- Running fast linters on touched files
- Warning on unusually large diffs
- Requiring verification for risky change types
- Reminding the agent about screenshots after UI edits

## What hooks are bad for

- Long autonomous workflows
- Flaky network-heavy processes
- Hidden side effects
- Replacing explicit scripts
- Business logic that the team cannot inspect easily

## Decision rule

Ask:

`Should this happen automatically on every relevant task?`

If yes, a hook may be appropriate.
If no, this probably belongs in a skill, script, or `AGENTS.md`.

## Hook design rules

- Keep hooks narrow and deterministic.
- Fail loudly and clearly.
- Return actionable messages.
- Keep runtime short.
- Avoid doing many unrelated checks in one hook.
- Prefer warn-only first, then enforce once the team trusts it.

## Recommended starter hooks

### 1. Forbidden paths

Purpose:

- Prevent edits to generated files, vendor folders, migration snapshots, or protected infra files unless explicitly requested.

### 2. Secret and credential checks

Purpose:

- Block accidental edits that introduce secrets, tokens, or copied credentials.

### 3. Verification reminders

Purpose:

- If backend code changed, remind about tests.
- If frontend code changed, remind about visual verification.
- If prompt assets changed, remind about eval reruns.

### 4. Diff size warning

Purpose:

- Warn when a task has become too broad and should be split.

## Suggested policy tiers

### Informational

- Prints a reminder
- Does not block execution

Use for:

- screenshot reminders
- prompt eval reminders
- broad-scope warnings

### Blocking

- Stops execution until fixed

Use for:

- secret leaks
- forbidden path writes
- clearly unsafe commands

## Example hook messages

- `You changed frontend files. Add visual verification before closing the task.`
- `This task touched more than 20 files. Re-check whether the scope is still surgical.`
- `Blocked: edits to db/migrations require explicit approval.`

## Governance

- Every hook should have an owner.
- Every hook should have a written reason.
- Every hook should be reviewed for false positives.
- Every blocking hook should be easy to override with explicit approval if needed.

## Rollout advice

Start with 2-3 hooks only:

- one safety hook
- one verification hook
- one scope-warning hook

Too many hooks too early will make the team work around them instead of learning from them.
