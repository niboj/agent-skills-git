# Examples

## EX-013. Write a feat commit message

- Context: a new search filter capability has been added.
- Objective: record the change as a feature commit.
- Preconditions: the staged diff only contains the feature implementation and any tightly coupled tests.
- Actions: review the staged diff; write `feat(search): add saved filter presets`; add a body only if rollout or migration notes matter.
- Expected result: the commit subject communicates a new user-visible capability.
- Guardrails: do not use `feat` if the diff only fixes an existing behavior.
- Concerned skill: `git-commit-convention`

## EX-014. Write a fix commit message

- Context: the diff corrects an API timeout regression.
- Objective: label the commit as a bug fix with an explicit scope.
- Preconditions: the staged diff contains only the regression fix and supporting tests.
- Actions: review the diff; write `fix(api): restore retry budget after timeout`; optionally explain the regression trigger in the body.
- Expected result: the subject clearly states the corrected behavior.
- Guardrails: avoid generic subjects like `fix bug` that still hide the problem domain.
- Concerned skill: `git-commit-convention`

## EX-015. Write a docs commit message

- Context: the staged change updates operator documentation without code changes.
- Objective: use a documentation-specific commit type.
- Preconditions: the diff contains Markdown or docs-only edits.
- Actions: review the diff; write `docs(runbook): clarify rollback prechecks`; keep the body short unless process impact needs explanation.
- Expected result: readers can identify documentation-only change sets from history.
- Guardrails: if code changes are present, split them into a separate commit.
- Concerned skill: `git-commit-convention`

## EX-018. Produce a commit with explanatory body and ticket reference

- Context: a schema migration commit needs extra explanation for reviewers and release notes.
- Objective: create a traceable commit with subject, body, and ticket reference.
- Preconditions: the staged diff is a single migration concern tied to ticket `DB-204`.
- Actions: write a subject such as `refactor(db): normalize audit event ids`; add a body explaining migration ordering and backward compatibility; append `Refs: DB-204`.
- Expected result: the commit is readable in log output and carries enough context for later investigation.
- Guardrails: keep the body factual and specific to the staged diff.
- Concerned skill: `git-commit-convention`
