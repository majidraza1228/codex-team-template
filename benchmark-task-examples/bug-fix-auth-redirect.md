# Task: bug-fix-auth-redirect

## Task type

Bug fix

## User request

Fix the login redirect bug where authenticated users sometimes land on a blank page instead of the dashboard after sign-in.

## Setup or fixture notes

- Start from a clean app state.
- Use the existing auth test suite if available.
- Reproduction steps should be captured before patching.

## Likely scope

- auth handlers
- redirect logic
- routing or session middleware

## Verification

- Reproduce the bug or confirm a failing test.
- Add or update a regression test.
- Confirm authenticated users reach the dashboard after sign-in.

## Common failure modes

- editing unrelated auth flows
- patching symptoms without understanding redirect state
- skipping regression coverage
