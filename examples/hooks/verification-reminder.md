# Example Hook: Verification Reminder

This hook exists to remind Codex to verify the type of change it just made.

## What it checks

It does not block by default. It inspects changed file types or paths and prints the next expected verification step.

## Example reminders

- Backend code changed: run the relevant tests.
- Frontend UI changed: perform visual verification.
- Prompt or instruction files changed: rerun eval cases.
- Database logic changed: check migrations or persistence tests.

## Why it matters

Teams often remember to edit but forget to verify. This hook helps make verification habitual without adding too much friction early on.

## Example messages

- `You changed frontend files. Add visual verification before closing the task.`
- `You changed prompt assets. Rerun the baseline eval cases before treating this as improved.`
- `You changed backend logic. Run targeted tests before broad integration checks.`

## Recommended behavior

- Start as informational.
- Keep the message short and specific.
- Avoid printing many reminders at once.

## Rollout advice

- Use one reminder per major file category.
- Promote only the highest-value reminders first.
- If a reminder becomes noisy, narrow the trigger rather than removing the idea entirely.
