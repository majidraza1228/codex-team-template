# Memory Guide

Memory is persisted state that should influence future work.

It is not just "more instructions."

## The three kinds of memory

### Working memory

- current task context
- active files
- current constraints
- short-lived

This usually belongs in the prompt or thread context.

### Operational memory

- stable repo norms
- standard commands
- preferred workflows

This usually belongs in `AGENTS.md`, skills, or docs.

### Long-term memory

- team preferences
- known environment quirks
- repeated failure patterns
- prior decisions worth preserving

This is what should be stored as memory.

## Use memory when

- the information persists across sessions
- it is expensive to rediscover
- it materially improves future execution
- it is more specific than broad repo documentation

## Do not use memory when

- the detail is only relevant to the current task
- the fact is speculative
- the information belongs in repo docs or `AGENTS.md`
- the note is stale or low confidence

## Good memory examples

- `This team strongly prefers targeted fixes over refactors.`
- `Frontend work in this repo should include visual verification.`
- `Network access is often unavailable in this environment.`
- `Prompt changes for the support classifier should be checked against the labeled eval set.`

## Bad memory examples

- entire architecture summaries
- copied PRD sections
- temporary debugging notes
- everything that happened in the last conversation

## Recommended schema

Store memory as structured state when possible:

- `scope`
- `fact`
- `type`
- `source`
- `confidence`
- `last_verified`
- `applies_when`

Example:

```text
scope: payments-service
fact: Do not edit migration snapshots without explicit approval.
type: repo_rule
source: team policy
confidence: high
last_verified: 2026-05-09
applies_when: database-related tasks
```

## Interaction with other layers

- Repo rule -> `AGENTS.md`
- Repeated workflow -> skill
- Auto-enforcement -> hook
- Persistent fact across tasks -> memory

If you can move a memory item into a clearer layer, do that.

## Governance

- review memory regularly
- prune stale entries
- separate fact from preference
- record confidence
- never let memory silently override current instructions

## Bottom line

Memory should make future work sharper, not more mysterious.
