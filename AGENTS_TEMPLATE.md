# AGENTS.md Template

Use this as the starting point for each repo. Keep it short, durable, and specific to the codebase.

Do not turn `AGENTS.md` into a wiki. It should shape execution, not explain everything.

---

# Project Instructions

## Mission

- State what this repo does in 1-3 lines.
- State what matters most: speed, correctness, safety, UX, stability, etc.

Example:

`This repo powers customer-facing support automations. Accuracy and safe rollout matter more than aggressive refactors.`

## Read First

- List the few files Codex should check before making non-trivial changes.
- Prefer product and architecture entry points, not broad documentation dumps.

Example:

- `README.md`
- `docs/architecture.md`
- `product-os/PRODUCT-CONTEXT.md`
- `product-os/sprints/current.md`

## Commands

- Provide exact commands for the core workflows.
- Keep this section executable and current.

Example:

- Run app: `make dev`
- Tests: `pytest -q`
- Lint: `ruff check .`
- Format: `ruff format .`
- Typecheck: `pyright`

## Codebase Map

- Explain where different categories of changes belong.
- This prevents Codex from editing the wrong layer.

Example:

- `api/`: HTTP handlers and request validation
- `services/`: business logic
- `db/`: persistence and migrations
- `prompts/`: prompt assets and evaluator rubrics
- `tests/`: regression and integration tests

## Working Rules

- Read relevant files before editing.
- Prefer surgical changes over broad refactors.
- Do not change unrelated files.
- Match existing patterns unless the task explicitly calls for redesign.
- Remove only the dead code created by your own change.

## Product Rules

- Check active PRDs before adding features.
- Do not infer new scope silently.
- If the request conflicts with current product docs, surface the conflict.

## Verification Rules

- Bug fix: reproduce, patch, rerun verification.
- Feature: add or update tests when behavior changes.
- UI change: verify visually when relevant.
- Prompt or workflow change: run harness cases if available.

## Git Rules

- Stage only the files relevant to the task.
- Never use destructive git commands unless explicitly asked.
- Do not amend published commits.
- Do not bypass hooks.

## Escalation Rules

- Ask before schema changes.
- Ask before infrastructure changes.
- Ask before security-sensitive changes.
- Ask before deleting or moving large file groups.

## Anti-Patterns

- Do not treat missing context as permission to guess.
- Do not refactor adjacent code just because it looks weak.
- Do not add abstractions for single-use logic.
- Do not create new files when editing an existing file is sufficient.

## Team Skills To Prefer

- List the skills your team should use first for repeated work.

Example:

- `bug-fix`
- `prd-to-plan`
- `prompt-change-with-eval`
- `review-pr-comments`

## Repo-Specific Notes

- Add only the instructions that materially change execution in this repo.
- If a rule does not change behavior, remove it.

---

## Authoring Checklist

Keep `AGENTS.md` good by checking:

- Is this instruction durable across many tasks?
- Is it specific enough to change execution?
- Would a new teammate benefit from this immediately?
- Does this belong here instead of in a skill, script, or docs page?

If not, remove it.
