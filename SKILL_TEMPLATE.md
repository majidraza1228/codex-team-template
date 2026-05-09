---
name: "example-skill"
description: "Short description of the repeated workflow this skill handles."
---

# Skill Template

Use a skill when a workflow is repeated often enough that the team should not re-explain it every session.

Good skills package execution. Bad skills package vague advice.

## Use this skill when

- Describe the exact trigger conditions.
- Be concrete about task type, not team aspirations.

Example:

- Use when a bug report includes reproduction steps and the goal is to produce a verified patch.

## Do not use this skill when

- List nearby cases where the skill should not be used.

Example:

- Do not use for broad refactors.
- Do not use when product requirements are unclear.

## Inputs expected

- Required files or docs
- Required context
- Required commands or fixtures

Example:

- Failing test output or clear reproduction steps
- Relevant module path
- Known verification command

## Workflow

1. Read the relevant files before editing.
2. Reproduce or verify the current behavior.
3. Isolate the smallest change that addresses the issue.
4. Implement the change without unrelated cleanup.
5. Verify using the expected checks.
6. Summarize what changed and what remains risky.

## Verification

- State exact checks.
- Prefer deterministic checks over subjective review.

Example:

- Run the failing test first.
- Confirm the fix with the same test.
- Rerun nearby tests for regression risk.

## Output shape

- Define how the result should be reported.

Example:

- Root cause
- Files changed
- Verification performed
- Remaining risks

## Design rules for skills

- Keep the write scope narrow.
- Encode judgment checkpoints, not generic encouragement.
- Prefer explicit sequence over abstract principles.
- Reference scripts and commands instead of re-describing them.
- Split broad skills into smaller ones once they accumulate branching logic.

## Good skill candidates

- `bug-fix`
- `prd-to-implementation-plan`
- `prompt-update-with-evals`
- `api-doc-update`
- `review-comment-resolution`

## Bad skill candidates

- `coding-best-practices`
- `be-careful`
- `make-good-decisions`

If the skill name sounds like a slogan, it is probably not a skill.
