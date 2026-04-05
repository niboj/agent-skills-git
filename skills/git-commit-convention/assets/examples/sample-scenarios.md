# Sample Scenarios

## EX-012. Split an overly broad change into several commits

- Context: one worktree mixes UI polish, an API fix, and documentation edits.
- Objective: turn the mixed diff into several coherent commits.
- Preconditions: all changes are local and the agent can inspect staged or unstaged hunks.
- Actions: identify three intents; stage only the API fix first; commit it; then stage the UI polish; commit it; finally stage the docs update; commit it.
- Expected result: the branch history tells three clear stories instead of one confusing aggregate.
- Guardrails: do not split interdependent lines into separate commits if that would break the build or tests.
- Concerned skill: `git-commit-convention`

## EX-016. Write a refactor commit message

- Context: the diff renames internal helper functions and extracts common logic without changing behavior.
- Objective: classify the commit as a refactor.
- Preconditions: tests or inspection confirm there is no intended behavior change.
- Actions: review the staged diff; write `refactor(auth): extract token parsing helpers`; add a short body if the refactor unlocks later work.
- Expected result: the commit history shows a structural improvement rather than a feature or fix.
- Guardrails: if behavior changed, use a more accurate type or split the work.
- Concerned skill: `git-commit-convention`
