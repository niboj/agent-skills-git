---
name: git-branch-workflow
description: Use this skill when you need to create, rename, or validate a Git work branch from a safe and synchronized base branch.
---

# Purpose

Create or normalize a working branch without breaking branch policy.

# When To Use

- before starting feature, fix, or chore work
- when a local branch name does not match convention
- when the base branch must be checked before branching

# When Not To Use

- when the task is only about commit wording
- when the branch already exists remotely and the issue is sync or review

# Required Inputs

- target branch purpose
- ticket or issue identifier when available
- base branch name

# Ordered Procedure

1. Inspect current branch, status, and remotes.
2. Verify the chosen base branch exists and is synchronized enough for branching.
3. Derive a compliant branch name.
4. Create or rename the local branch.
5. Report the resulting branch and any follow-up sync expectations.

# Guardrails

- never branch from stale `main` without saying so
- never branch from a dirty or ambiguous base without warning
- prefer names that encode intent and ticket traceability

# Output Expectations

- chosen base branch
- resulting branch name
- exact branch command used or proposed
- any sync or publication follow-up

# Examples

## EX-006. Create a feature branch from main

- Context: the user wants to implement ticket `APP-142` from the default branch.
- Objective: create a compliant feature branch from an up-to-date `main`.
- Preconditions: `main` exists locally and remotely; the worktree is clean; `origin/main` is current enough for the task.
- Actions: inspect state; switch to `main` if needed; fetch if required; verify no local drift; create `feature/APP-142-search-filters`.
- Expected result: a new branch is created from the intended base and is ready for isolated work.
- Guardrails: do not create the branch if `main` is behind expected remote state and the user has not accepted the risk.
- Concerned skill: `git-branch-workflow`

## EX-009. Refuse branch creation from a stale base

- Context: a user asks for a new feature branch, but local `main` has not been synchronized recently.
- Objective: prevent branching from an outdated base.
- Preconditions: `git fetch` or log comparison shows `main` is behind `origin/main`.
- Actions: inspect status and branch; explain that branching now would bake avoidable divergence into the branch; ask to synchronize `main` first.
- Expected result: no new branch is created until the base is updated or the user explicitly accepts a justified exception.
- Guardrails: do not hide the stale-base risk by branching anyway.
- Concerned skill: `git-branch-workflow`

# Related References

- `references/concepts.md`
- `references/decision-rules.md`
- `references/examples.md`
- `assets/examples/sample-scenarios.md`
