# Benchmark Task Examples

These task records are examples for a small Codex eval harness.

They are intentionally realistic rather than benchmark-style puzzles. The point is to show how a team can normalize real work into repeatable tasks.

## What each task record should contain

- task id
- task type
- user request
- setup or fixture notes
- likely scope
- verification
- common failure modes

## Suggested usage

Start with 5-10 tasks like these in a pilot repo, then compare:

- baseline prompting only
- prompting plus repo `AGENTS.md`
- prompting plus `AGENTS.md` plus skills

That gives the team a visible way to evaluate whether structure improves Codex outcomes.
