# Project Instructions

## Mission

- This repo provides a Python backend API.
- Correctness, narrow diffs, and safe behavior changes matter more than stylistic cleanup.

## Read First

- `README.md`
- `docs/architecture.md`
- `api/`
- `services/`
- `tests/`

## Commands

- Run app: `make dev`
- Tests: `pytest -q`
- Lint: `ruff check .`
- Format: `ruff format .`
- Typecheck: `pyright`

## Codebase Map

- `api/`: request handlers and validation
- `services/`: business logic
- `db/`: persistence and migrations
- `tests/`: regression and integration coverage

## Working Rules

- Read relevant modules before editing.
- Keep fixes surgical.
- Avoid changing API shape unless explicitly requested.
- Do not edit migrations without approval.

## Verification

- Add or update tests when behavior changes.
- Reproduce bugs before patching when feasible.

## Team Skills To Prefer

- `bug-fix`
- `prd-to-plan`
- `prompt-change-with-eval`
