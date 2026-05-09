---
name: "prd-to-plan"
description: "Turn a product requirement into an implementation plan with scope, dependencies, risks, and verification."
---

# PRD To Plan

Use this skill when the team has a product requirement and needs a concrete implementation plan before coding.

## Use this skill when

- A PRD or feature brief exists.
- The repo or system context can be inspected directly.
- The next useful artifact is an engineering plan, not immediate implementation.
- The team wants scope and verification clarified before work starts.

## Do not use this skill when

- The request is trivial and no planning overhead is justified.
- The requirement is still too vague to plan responsibly.
- The user wants direct implementation now and the change is already well understood.

## Inputs expected

- PRD, feature brief, or user story
- Relevant architecture or code entry points
- Known constraints such as deadlines, dependencies, or non-goals

## Workflow

1. Read the PRD or feature brief carefully.
2. Inspect the relevant code and system boundaries.
3. Translate product language into concrete engineering workstreams.
4. Identify affected files, systems, and dependencies.
5. Separate required work from optional improvements.
6. Define verification for each major work item.
7. Call out risks, assumptions, and open questions explicitly.

## Output shape

- Goal summary
- Proposed implementation approach
- Workstreams or steps
- Verification plan
- Risks and open questions

## Verification

- Plans should map cleanly to repo reality.
- Every major step should have a concrete check.
- Risks should be actionable, not generic.

## Design notes

- Do not silently invent product requirements.
- Keep the plan structured enough to hand to an engineer or agent.
- If multiple viable approaches exist, present the tradeoff instead of pretending there is one obvious answer.
