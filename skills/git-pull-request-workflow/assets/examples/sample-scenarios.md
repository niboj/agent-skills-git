# Sample Scenarios

## EX-027. Update a branch after review comments

- Context: reviewers requested naming cleanup and one missing test after the initial PR.
- Objective: update the branch and refresh the PR description without losing traceability.
- Preconditions: review comments are explicit; the branch remains the active review branch.
- Actions: apply the requested changes in one or more focused commits; rerun relevant checks; update the PR summary or reviewer notes to point to the addressed comments.
- Expected result: reviewers can see what changed since the last review round and why.
- Guardrails: do not force-push rewritten history on a shared review branch unless the workflow explicitly allows it.
- Concerned skill: `git-pull-request-workflow`
