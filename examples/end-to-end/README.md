# End-to-End Example

This example shows how the layers fit together in one realistic task.

## Scenario

The team needs Codex to fix a login redirect bug in a Python backend with a small frontend surface.

## The layers used

- Prompt:
  the task states the objective, scope, constraints, context, and verification
- `AGENTS.md`:
  defines repo commands, verification expectations, and anti-refactor rules
- Skill:
  use the `bug-fix` workflow
- Hook:
  forbidden paths and verification reminders run automatically
- Eval:
  the bug-fix task becomes part of the regression set
- Memory:
  the team remembers that frontend changes require visual verification

## Example task

Objective:
Fix the login redirect bug where authenticated users land on a blank page instead of the dashboard.

Scope:
Stay within auth and routing modules unless a dependency forces a wider change.

Constraints:
Do not change the external API shape. Avoid unrelated cleanup.

Context:
The issue is reproducible after successful authentication. Existing auth tests cover adjacent behavior.

Verification:
Reproduce first, patch minimally, add or update a regression test, and confirm the redirect lands on the dashboard.

## Why this example matters

It shows that a good Codex workflow is not "a clever prompt." It is a layered system:

- instructions
- workflow
- safeguards
- verification
- durable memory where needed
