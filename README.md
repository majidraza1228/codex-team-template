# codex-team-template

Starter kit for teaching a team to use Codex as an agentic development system.

## Why this exists

Most teams start using Codex as a better chat interface for coding. That usually leads to inconsistent results:

- people write vague requests
- important repo rules live only in someone’s head
- repeated workflows get re-explained every session
- risky tasks have no automatic safeguards
- prompt changes are judged by anecdotes instead of evidence

This template is meant to fix that.

It gives a team a repeatable operating model for Codex built around durable instructions, reusable skills, lightweight hooks, and evaluation loops.

The goal is not just to get Codex to do work.

The goal is to help a team use Codex in a structured, agentic, production-friendly way.

## Who this template is for

This repo is useful for:

- engineering teams adopting Codex across multiple repos
- AI product teams building agentic development workflows
- technical leads who want stronger repo instructions and safer automation
- teams that want to move from ad hoc prompting to repeatable systems

It is especially useful if your team already has repeated tasks like:

- bug fixes
- PRD-to-implementation work
- review comment resolution
- documentation updates tied to code changes
- prompt or workflow iteration

## Core idea

This template teaches one simple operating rule:

Use the thinnest layer that solves the problem.

- One-off instruction: put it in the prompt
- Repo-wide stable instruction: put it in `AGENTS.md`
- Repeated workflow: make it a skill
- Always-run enforcement: use a hook
- Deterministic operation: wrap it in a script or CLI

That separation matters. Teams get weak results when they try to solve everything with prompts alone.

## What this repo contains

- `AGENTS.md`: operating rules for this template repo
- `AGENTS_TEMPLATE.md`: template for repo-specific `AGENTS.md` files
- `SKILL_TEMPLATE.md`: template for reusable Codex skills
- `HOOKS_POLICY.md`: guidance for designing hooks
- `TASK_FRAMING_GUIDE.md`: how to write high-signal Codex tasks
- `EVAL_HARNESS_STARTER.md`: starter guidance for measuring workflow quality
- `CODEX_TEAM_PLAYBOOK.md`: rollout guidance for training a team
- `examples/skills/`: concrete skill examples you can copy and adapt
- `examples/hooks/`: concrete hook examples and rollout guidance
- `benchmark-task-examples/`: sample task records for a pilot eval harness

## How each file should be used

### `AGENTS.md`

This is the repo-level instruction file for this template repository itself. It shows the style and scope that a real `AGENTS.md` should have:

- durable rules
- execution guidance
- file-role clarity
- minimal fluff

### `AGENTS_TEMPLATE.md`

This is the starting point for a real project’s `AGENTS.md`.

It defines the sections that matter most:

- mission
- read-first files
- commands
- codebase map
- working rules
- verification rules
- escalation rules
- anti-patterns

This file should be copied and tightened per repo. It is not meant to be used unchanged everywhere.

### `SKILL_TEMPLATE.md`

This is the starting point for reusable team workflows.

Use it when your team notices that the same multi-step work is being explained repeatedly. Good examples:

- bug-fix workflow
- prompt-update-with-evals
- review-comment-resolution
- PRD-to-implementation-plan

The point of a skill is not “best practices.” The point is a repeatable execution pattern.

### `HOOKS_POLICY.md`

This explains what hooks should and should not do.

Hooks are best when they are:

- narrow
- deterministic
- fast
- explainable

Hooks are not a place to hide business logic or create opaque automation.

### `TASK_FRAMING_GUIDE.md`

This teaches the team how to write better requests for Codex.

The core structure is:

1. Objective
2. Scope
3. Constraints
4. Context
5. Verification

This is one of the highest-leverage parts of the template because most weak Codex outcomes start with weak task framing.

### `EVAL_HARNESS_STARTER.md`

This explains how to move from “Codex sometimes works well” to “we can measure whether our workflow is improving.”

It introduces:

- task sets
- stable fixtures
- transcript and diff capture
- deterministic checks
- baseline versus candidate comparisons

### `CODEX_TEAM_PLAYBOOK.md`

This is the rollout and training layer.

It tells a lead or manager how to take the pieces above and turn them into a team adoption plan.

## Recommended adoption order

1. Start with `AGENTS_TEMPLATE.md` in one pilot repo.
2. Convert 3-5 repeated workflows into skills.
3. Add 2-3 narrow hooks for safety and verification.
4. Train the team on `TASK_FRAMING_GUIDE.md`.
5. Build a small eval harness from real tasks.

## What a good rollout looks like

### Phase 1: pilot one repo

Do not start by standardizing ten repos at once.

Pick one repo with:

- active development
- repeated engineering tasks
- clear commands for build, test, and lint
- a team willing to refine the workflow

Use that repo to create:

- a real `AGENTS.md`
- 3 repo-specific skills
- 2 lightweight hooks
- a 10-task eval set

### Phase 2: standardize patterns

After the pilot repo works, extract what generalizes:

- `AGENTS.md` structure
- skill naming conventions
- hook policy
- task framing expectations
- evaluation habits

Only then should you roll the template across more repos.

### Phase 3: measure and tighten

Once the team is using Codex regularly, the next step is not more documentation. It is feedback:

- which instructions are ignored because they are weak?
- which skills are too broad?
- which hooks are noisy?
- which task types still fail often?

That is where the eval harness becomes important.

## What this template is not

This repo is not:

- a full Codex product manual
- a one-size-fits-all `AGENTS.md`
- a library of finished production hooks
- a replacement for repo-specific architecture docs
- a substitute for engineering judgment

It is a starter operating system for adopting Codex well.

## Concrete examples included

This repo now includes example artifacts so teams do not have to start from blank templates:

- `examples/skills/bug-fix/SKILL.md`
- `examples/skills/prd-to-plan/SKILL.md`
- `examples/skills/prompt-change-with-eval/SKILL.md`
- `examples/hooks/forbidden-paths.md`
- `examples/hooks/verification-reminder.md`
- `benchmark-task-examples/`

These are not meant to be universally correct. They are meant to show the right level of specificity.

## Signs your team is using Codex better

You are on the right track when:

- tasks become shorter but more precise
- fewer instructions are repeated in chat
- repo rules move into `AGENTS.md`
- repeated work turns into skills
- risky work gets automatic checks
- prompt and workflow changes are tested against real task sets

You are still early when:

- every task starts from a blank prompt
- team members rely on personal prompting tricks
- nobody can explain why one Codex workflow is better than another
- repo behavior changes because of hidden assumptions instead of explicit rules

## How to customize this repo

The right customization pattern is:

1. copy the structure
2. replace generic text with repo-specific rules
3. remove anything that does not change behavior
4. add only workflows that are genuinely repeated

Do not expand the template just to make it look comprehensive.
If an instruction does not change execution quality, it should probably not be there.

## Suggested first three skills

If you want to start quickly, create these first:

1. `bug-fix`
2. `prd-to-plan`
3. `prompt-change-with-eval`

These usually cover a large fraction of repeated team work.

## Suggested first two hooks

If you want a lightweight start, use:

1. forbidden-path or secret-leak protection
2. verification reminder based on changed file type

That is enough to add useful structure without making the system heavy.

## Intended use

This repo is a template and reference set. It is meant to be copied, adapted, and tightened for real codebases.

## Next step

The fastest way to get value from this repo is to choose one real codebase and translate this template into:

- one strong `AGENTS.md`
- three real skills
- two narrow hooks
- one small eval harness

That is the point where Codex usage starts becoming agentic instead of merely interactive.
