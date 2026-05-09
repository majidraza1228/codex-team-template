# Layering Model

This document defines where different kinds of Codex guidance should live.

The most common team mistake is putting everything into prompts. The second most common mistake is putting everything into `AGENTS.md`.

Use the thinnest layer that solves the problem.

## Decision ladder

1. Is this only relevant to the current task?
   Put it in the prompt or thread context.

2. Is it a durable repo rule?
   Put it in `AGENTS.md`.

3. Is it a repeated workflow?
   Make it a skill.

4. Should it run automatically every time?
   Make it a hook.

5. Is it a deterministic operation?
   Put it in a script or CLI.

6. Does it require a separate worker with its own role or permissions?
   Make it an agent.

7. Is it a persistent fact or preference across tasks or sessions?
   Put it in explicit memory.

## Prompt

Use for:

- current-task objective
- immediate context
- temporary constraints
- one-off clarifications

Do not use for:

- repo policy
- repeated workflows
- hidden team conventions

## `AGENTS.md`

Use for:

- repo mission
- commands
- verification expectations
- codebase map
- durable rules

Do not use for:

- long tutorials
- temporary sprint notes
- repeated step-by-step workflows that belong in skills

## Skills

Use for:

- bug-fix workflow
- PRD-to-plan workflow
- prompt-change-with-eval workflow

Skills are methods, not workers.

## Hooks

Use for:

- forbidden path blocking
- secret checks
- verification reminders
- diff-size warnings

Hooks should enforce or remind automatically. They should not hide product logic.

## Scripts

Use for:

- exact test commands
- repo reset routines
- fixture setup
- deterministic formatting or checking

If correctness depends on exact execution, prefer a script over natural-language instructions.

## Agents

Use for:

- separate roles
- delegated or parallel work
- different permissions or tool surfaces
- long-running responsibilities

Agents are workers. Skills are playbooks.

## Memory

Use for:

- durable preferences
- known environment quirks
- persistent decisions
- repeated failure patterns worth remembering

Do not use memory as a second hidden `AGENTS.md`.

## Good examples

- `Do not touch migration snapshots without approval` -> `AGENTS.md`
- `Bug fix workflow with reproduce -> patch -> verify` -> skill
- `Block edits to db/migrations` -> hook
- `Run fixture reset exactly this way` -> script
- `Docs maintenance worker that runs weekly` -> agent
- `This repo often runs without network access` -> memory

## Bad examples

- putting repo commands only in memory
- storing prompt boilerplate in memory
- making an agent for every repeated workflow
- writing hooks that do hidden multi-step business logic

## Bottom line

If a team does not understand this layering model, Codex adoption becomes noisy fast.
