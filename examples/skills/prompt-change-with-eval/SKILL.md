---
name: "prompt-change-with-eval"
description: "Update a prompt or agent instruction set, then validate the change against a stable task set instead of intuition."
---

# Prompt Change With Eval

Use this skill when the team wants to modify prompts, system instructions, or workflow guidance and needs evidence that the change helps.

## Use this skill when

- Prompt assets or agent instructions are changing.
- There is a stable eval set or at least a small repeatable task set.
- The team wants to compare baseline versus candidate behavior.

## Do not use this skill when

- No repeatable task set exists yet.
- The task is pure implementation unrelated to prompt behavior.
- The user only wants brainstorming, not validation.

## Inputs expected

- Current prompt or instruction file
- Reason for the change
- Relevant failure examples
- Existing eval tasks, harness cases, or manually repeatable scenarios

## Workflow

1. Review the current prompt or instruction set.
2. Identify the specific failure pattern driving the change.
3. Edit only the relevant prompt or guidance section.
4. Run the stable task set or eval harness against the baseline and candidate.
5. Compare pass rate, regressions, and failure shape.
6. Keep the change only if it improves results without introducing worse failures.

## Verification

- Use repeatable tasks, not impressions from one good run.
- Check for regressions in previously passing cases.
- Record whether the change improved precision, scope control, or completion quality.

## Output shape

- Problem being addressed
- Prompt change made
- Tasks evaluated
- Comparison result
- Regressions or remaining risks

## Design notes

- Change one important variable at a time when possible.
- Avoid broad rewrites unless the current prompt is structurally broken.
- Treat prompt work as a measured engineering change, not creative rewriting.
