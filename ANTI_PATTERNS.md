# Anti-Patterns

These are the most common ways teams make Codex adoption worse instead of better.

## 1. Using prompts for everything

If every important rule is retyped in chat, the system is not durable.

Fix:

- move repo rules into `AGENTS.md`
- move repeated methods into skills

## 2. Overloading `AGENTS.md`

If `AGENTS.md` becomes a giant wiki, nobody uses it well.

Fix:

- keep only rules that change execution
- move tutorials into docs
- move workflows into skills

## 3. Creating agents too early

Many teams build separate agents before they have stable workflows.

Fix:

- start with `AGENTS.md` and skills
- add agents only when a real role boundary appears

## 4. Making skills too broad

If one skill covers many unrelated branches, it becomes vague and unhelpful.

Fix:

- split large skills into narrower workflows

## 5. Using hooks for hidden logic

Hooks should not secretly make product decisions.

Fix:

- keep hooks narrow, deterministic, and explainable

## 6. Treating memory as a hidden system prompt

Memory should store durable facts, not opaque instruction sprawl.

Fix:

- store structured, reviewable memory
- move repo rules to `AGENTS.md`

## 7. Changing prompts without evals

One good run is not evidence.

Fix:

- use stable tasks
- compare baseline versus candidate

## 8. Standardizing too many repos at once

Rolling out across many repos before a pilot works usually creates noisy, low-trust guidance.

Fix:

- prove the model in one repo first

## Bottom line

When Codex usage feels noisy, the problem is usually layer confusion rather than model capability.
