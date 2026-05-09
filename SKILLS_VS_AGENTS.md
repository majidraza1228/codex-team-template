# Skills vs Agents

Teams often confuse skills and agents. The distinction should be kept simple:

- A skill is a reusable workflow or playbook.
- An agent is a reusable worker or system actor.

A skill tells Codex how to do a kind of work.
An agent is the thing that does work using tools, context, and possibly skills.

## Use a skill when

Use a skill if the same procedure keeps repeating.

Examples:

- bug fix workflow
- PRD to implementation plan
- prompt change with eval
- review comment resolution

A skill is the right layer when:

- the same steps repeat across many tasks
- the same judgment checkpoints repeat
- you want better execution without creating a separate worker
- the task still belongs to the current Codex session

Think:

`When this kind of task appears, follow this playbook.`

## Use an agent when

Use an agent if you need a distinct actor with its own responsibility, tool surface, or lifecycle.

Examples:

- a code review agent
- a bug triage agent
- a docs maintenance agent
- a long-running background agent
- a subagent that handles one isolated chunk of work

An agent is the right layer when:

- the responsibility is separate and durable
- it needs different tools or permissions
- it may run asynchronously or in parallel
- you want clear ownership boundaries
- you may hand work off between specialized workers

Think:

`This worker owns this category of work.`

## Simple rule

- If you are reusing instructions, use a skill.
- If you are reusing a role, use an agent.

## Good example

### Bug fix as a skill

A `bug-fix` skill can define the method:

- reproduce
- isolate root cause
- patch minimally
- verify

### Bug triage as an agent

A `bug-triage` agent can define the worker:

- reads bug reports
- clusters them
- prioritizes them
- opens issues
- may call the `bug-fix` skill later

So:

- skill = method
- agent = worker

## How they fit together

The clean operating model is:

- `AGENTS.md` sets repo-wide rules
- skills encode repeated workflows
- agents own distinct roles or task domains
- hooks enforce automatic checks
- evals measure whether the system improves

An agent can use skills.
A skill should not become an agent unless it starts needing:

- separate ownership
- different permissions or tools
- long-running execution
- handoffs or orchestration

## Decision table

Use a skill when:

- one Codex session can do the work
- the main need is repeatable execution guidance
- the workflow is procedural
- you want portability across repos

Use an agent when:

- the worker needs its own role
- tasks should be delegated or parallelized
- tool access differs by responsibility
- the system needs orchestration, handoffs, or autonomy

## Common mistake

Teams often create agents too early.

Bad pattern:

- one agent for every repeated task type

Better pattern:

- start with `AGENTS.md` and skills
- add agents only when a real role boundary appears

That keeps the system simpler and easier to debug.

## Practical heuristic

Ask these in order:

1. Is this just a repo rule? Put it in `AGENTS.md`.
2. Is this a repeated workflow? Make it a skill.
3. Does this need a separate owner or worker with different tools or autonomy? Make it an agent.

## Bottom line

Most teams should start with better prompts, a strong `AGENTS.md`, and a few good skills.

They should add more agents only when the workflow genuinely needs separate workers, ownership boundaries, or orchestration.
