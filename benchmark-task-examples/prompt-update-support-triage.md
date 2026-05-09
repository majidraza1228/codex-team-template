# Task: prompt-update-support-triage

## Task type

Prompt or instruction update

## User request

Update the support triage prompt so billing questions are classified correctly without increasing false positives on technical bug reports.

## Setup or fixture notes

- Use the current prompt file and stable labeled examples.
- Compare baseline versus candidate on the same task set.

## Likely scope

- prompt assets
- evaluator or labeled examples
- minimal surrounding workflow instructions

## Verification

- Run the same evaluation set before and after the change.
- Measure whether billing classification improves.
- Check that technical bug report classification does not regress.

## Common failure modes

- rewriting the whole prompt without a focused hypothesis
- evaluating on too few examples
- claiming improvement from one anecdotal result
