# Examples

## EX-025. Summarize pull request changes from the diff

- Context: the branch includes several commits, but reviewers need one coherent PR summary.
- Objective: derive a concise narrative from the aggregate diff.
- Preconditions: the target branch is known and the final branch diff is available.
- Actions: inspect the diff by domain; group the changes into two to four themes; write a short summary that explains user impact and internal impact.
- Expected result: the PR summary is stable even if the branch history was rebased or squashed.
- Guardrails: do not simply concatenate commit messages when they overlap or contradict each other.
- Concerned skill: `git-pull-request-workflow`

## EX-026. Add a risks and impacts section to a pull request

- Context: a backend change touches caching and rollout behavior.
- Objective: make operational and review risk explicit.
- Preconditions: the implementation is ready enough for review and the risk areas are known.
- Actions: list behavior changes, migration concerns, rollback concerns, and monitoring expectations in a dedicated section.
- Expected result: reviewers can assess not only correctness but also deployment implications.
- Guardrails: keep risk wording concrete and tied to the actual change.
- Concerned skill: `git-pull-request-workflow`
