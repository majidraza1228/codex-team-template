# Codex Team Playbook

This folder is a starter kit for teaching a team to use Codex as an agentic system rather than a chat box.

## What is here

- `AGENTS_TEMPLATE.md`: a production-grade starting template for repo-level instructions
- `SKILL_TEMPLATE.md`: a template for reusable Codex skills
- `HOOKS_POLICY.md`: guidance for when to use hooks and what they should enforce
- `TASK_FRAMING_GUIDE.md`: how to write high-signal tasks for Codex
- `EVAL_HARNESS_STARTER.md`: how to measure workflow quality over time

## Recommended rollout order

1. Adopt `AGENTS_TEMPLATE.md` in one pilot repo.
2. Create 3-5 high-frequency skills from repeated team work.
3. Add a few narrow hooks for safety and verification.
4. Train the team on the task framing guide.
5. Build a small eval harness from 10 real tasks.

## Operating principle

Use the thinnest layer that solves the problem:

- One-off instruction: put it in the prompt
- Repo-wide stable instruction: put it in `AGENTS.md`
- Repeated workflow: make it a skill
- Always-run enforcement: use a hook
- Deterministic operation: wrap it in a script or CLI

## Teaching goal

Your team should learn to move from:

- "Can Codex do this?"

to:

- "What persistent instructions, reusable workflows, and checks should govern this task?"
