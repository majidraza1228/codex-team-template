# Project Instructions

## Mission

- This repo builds AI and agent workflows.
- Reliability, prompt discipline, and evaluation quality matter more than clever prompt writing.

## Read First

- `README.md`
- `prompts/`
- `evals/`
- `agents/`
- `docs/`

## Commands

- Run app: `make dev`
- Evals: `make eval`
- Tests: `pytest -q`
- Lint: `ruff check .`

## Working Rules

- Prefer structured outputs over free-text parsing when possible.
- Keep prompt changes narrow unless a broad rewrite is clearly justified.
- Do not claim prompt improvement without rerunning eval cases.

## Verification

- Prompt and workflow changes should be checked against stable tasks.
- Record regressions, not just improvements.

## Team Skills To Prefer

- `prompt-change-with-eval`
- `prd-to-plan`
- `bug-fix`
