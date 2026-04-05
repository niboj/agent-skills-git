---
name: git-pull-sync-strategy
description: Use this skill when you need to synchronize local Git history with a remote branch and must choose safely between fetch, rebase, merge, or refusal.
---

# Purpose

Synchronize local history intentionally instead of relying on implicit pull behavior.

# When To Use

- before updating a local branch from its remote
- when divergence is suspected
- when the user asks for `git pull` and the right strategy is not yet known

# When Not To Use

- when the task is creating a new branch
- when the repository has unresolved conflicts that must be finished first

# Required Inputs

- current branch
- remote branch to compare
- sharing status of local commits

# Ordered Procedure

1. Inspect branch, status, and remotes.
2. Fetch remote updates explicitly.
3. Compare local and remote commit sets.
4. Choose rebase, merge, or stop based on sharing and policy.
5. Explain the chosen strategy before running it.

# Guardrails

- refuse auto-pull on a dirty worktree
- never rewrite already shared history without explicit approval
- prefer fetch plus explicit choice over `git pull` defaults

# Output Expectations

- divergence summary
- chosen sync strategy and why
- exact command executed or proposed

# Examples

## EX-019. Sync a local branch with fetch and rebase

- Context: a personal feature branch needs the latest `origin/main` before more work.
- Objective: replay local commits on top of the updated base without creating a merge commit.
- Preconditions: the worktree is clean; local feature commits are not yet shared; remote access is healthy.
- Actions: inspect state; run `git fetch`; compare local branch to `origin/main`; run a rebase onto the updated base; verify status afterward.
- Expected result: the branch contains the same local intent on top of the latest remote base with a linear history.
- Guardrails: stop if the local commits were already shared with collaborators.
- Concerned skill: `git-pull-sync-strategy`

## EX-022. Refuse an automatic pull on a dirty worktree

- Context: the user asks for `git pull`, but local modifications are present.
- Objective: avoid accidental conflict or overwrite from an implicit merge or rebase.
- Preconditions: `git status --short --branch` shows modified, staged, or untracked files.
- Actions: inspect state; explain that sync must wait; propose commit, stash, branch change, or cleanup depending on user intent.
- Expected result: no pull occurs until the local state is made safe.
- Guardrails: do not hide the risk by using stash automatically without user approval.
- Concerned skill: `git-pull-sync-strategy`

# Related References

- `references/concepts.md`
- `references/decision-rules.md`
- `references/examples.md`
- `assets/examples/sample-scenarios.md`
