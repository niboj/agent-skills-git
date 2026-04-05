# Sample Scenarios

## EX-010. Rename a local branch to meet convention

- Context: a contributor created a local branch named `workstuff` and has not pushed it yet.
- Objective: rename the branch before it becomes shared.
- Preconditions: the branch exists only locally; no pull request or automation references the old name.
- Actions: inspect status; confirm the branch is unpublished; rename it to `feature/UX-11-settings-panel`; update any local notes or scripts that referenced the old name.
- Expected result: the branch now follows repository naming policy without remote cleanup work.
- Guardrails: if the branch was already pushed, treat the rename as a coordinated publication change instead of a local-only cleanup.
- Concerned skill: `git-branch-workflow`
