# Task: csv-parser-regression

## Task type

Bug fix

## User request

Fix the CSV parser so files with empty trailing columns no longer fail import.

## Setup or fixture notes

- Use a saved failing CSV sample from the fixture set.
- Confirm current import behavior before editing.

## Likely scope

- CSV parsing logic
- import validation
- nearby parser tests

## Verification

- Add or update a regression test for empty trailing columns.
- Confirm the sample file imports successfully.
- Rerun nearby import tests.

## Common failure modes

- broad parser rewrites
- accidentally changing output shape
- passing the fixture while breaking other import cases
