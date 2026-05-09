# Task: docs-api-sync

## Task type

Documentation update tied to code

## User request

Update the API docs to match the current request and response behavior of the billing endpoint.

## Setup or fixture notes

- Read the handler and tests before editing docs.
- Use existing API documentation conventions.

## Likely scope

- endpoint handler
- request/response tests
- docs or README sections for the endpoint

## Verification

- Confirm docs reflect actual fields and status codes.
- Ensure examples match current behavior.
- Verify no unsupported claims remain.

## Common failure modes

- updating docs without checking real code
- copying stale examples
- describing intended behavior rather than current behavior
