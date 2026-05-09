# Eval Harness Starter

An eval harness is the repeatable system around Codex that lets you run the same tasks, score the results, and compare workflow changes over time.

Without a harness, you get anecdotes.
With a harness, you get evidence.

## What to include first

- 10-20 real tasks from team work
- a stable starting workspace or fixture repo for each task
- a runner with consistent permissions and tool surface
- transcript and diff capture
- deterministic pass/fail checks
- one baseline to compare against

## Task selection rules

Choose tasks that represent real work:

- bug fixes
- doc updates tied to code
- feature slices
- review comment resolution
- prompt asset updates

Do not start with toy tasks unless you are testing infrastructure only.

## Minimum task record

Each task should define:

- task id
- user request
- setup instructions
- allowed scope
- verification command or checks
- expected artifacts
- notes on common failure modes

## Scoring order

Prefer:

1. deterministic code checks
2. structural checks
3. targeted human review
4. LLM-as-judge only where exact checks are not enough

## What to measure

- pass rate
- pass rate by task type
- constraint violations
- average turns
- tool misuse
- diff size
- latency
- cost
- regressions versus baseline

## Failure analysis

When a run fails, classify it:

- environment failure
- task-spec failure
- agent-behavior failure
- evaluator failure

If you do not separate these categories, you will improve the wrong thing.

## Candidate workflow

1. Capture 10 real tasks from your team.
2. Normalize them into a repeatable format.
3. Run a baseline workflow.
4. Record failures by category.
5. Improve one variable at a time.
6. Re-run the same task set.
7. Keep only changes that improve the metrics without causing regressions.

## What to improve with the harness

- `AGENTS.md`
- prompt patterns
- skills
- hooks
- scripts and CLIs
- environment setup

## Good first team project

Build a `Codex Workflow Benchmark` with:

- 5 bug-fix tasks
- 3 doc-update tasks
- 2 review-comment tasks

Then compare:

- baseline prompting only
- prompting plus repo `AGENTS.md`
- prompting plus `AGENTS.md` plus skill support

This gives the team a visible demonstration that agentic structure improves outcomes.
