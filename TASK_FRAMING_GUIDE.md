# Task Framing Guide

Teach the team to frame work for Codex as an execution brief, not a chat prompt.

The goal is to reduce guessing while preserving room for reasoning.

## The 5-part structure

Every non-trivial task should try to include:

1. Objective
2. Scope
3. Constraints
4. Context
5. Verification

## 1. Objective

State the exact desired outcome.

Weak:

- `Fix auth`

Strong:

- `Fix the login redirect bug that leaves authenticated users on a blank page after sign-in.`

## 2. Scope

Tell Codex where the likely change should live.

Weak:

- `Look around and fix it`

Strong:

- `Stay within the auth and routing modules unless a dependency forces a wider change.`

## 3. Constraints

State what must not happen.

Examples:

- Do not change the external API shape.
- Avoid unrelated refactors.
- Do not modify generated files.
- Preserve current DB schema.

## 4. Context

Supply only the context that changes execution quality.

Good context:

- failing test output
- PRD excerpt
- file paths
- repro steps
- screenshots
- examples of similar code

Bad context:

- broad history of the whole system
- duplicated instructions
- speculative future ideas
- large irrelevant logs

## 5. Verification

Define how success will be checked.

Examples:

- Add a regression test.
- Run `pytest tests/auth/test_login.py -q`.
- Verify only the expected files changed.
- Confirm the UI visually on desktop and mobile.

## Reusable prompt template

```text
Objective:
Fix the issue where uploaded CSV files with empty trailing columns fail parsing.

Scope:
Focus on the CSV import path in the backend service. Avoid unrelated ingestion logic.

Constraints:
Do not change the public API shape. Keep the existing validation model unless required.

Context:
The failure occurs on Excel-exported files. Relevant behavior is in the import logs and existing CSV tests.

Verification:
Add a regression test, make it pass, and rerun nearby import tests.
```

## Team heuristics

- Shorter is better if the task remains precise.
- Add constraints only when they matter.
- Never hide verification.
- If the task is ambiguous, clarify product intent before coding.
- If multiple interpretations exist, present them explicitly.

## Review checklist for prompts

Before sending a task to Codex, ask:

- Is the outcome unambiguous?
- Is the likely write scope clear?
- Are constraints explicit?
- Did I include the minimum useful context?
- Can success be verified?

If two or more answers are no, rewrite the task.
