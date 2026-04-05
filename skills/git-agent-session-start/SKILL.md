---
name: git-agent-session-start
description: Use this skill when you need to start an agent session in a Git repository by inspecting branch, remote, worktree, and risk signals before any modification.
---

# Purpose

Establish a safe Git baseline before the agent changes anything.

# When To Use

- before the first write action in a repository
- when a user asks the agent to inspect or modify a repo
- when the repository state is unknown

# When Not To Use

- when the task is purely conceptual and does not touch a repository
- after another Git skill already produced a fresh repository-state summary in the same session

# Required Inputs

- repository path
- intended task
- known branch policy, if any

# Ordered Procedure

1. Run `git status --short --branch`, `git branch --show-current`, and `git remote -v`.
2. Check for detached `HEAD`, untracked files, unstaged changes, staged changes, missing remotes, or in-progress merge/rebase state.
3. Summarize the current state in plain language.
4. If the state is unsafe or ambiguous, stop and route to `git-agent-refuse-unsafe-state` or another specialized skill.
5. If the state is safe, state the branch, cleanliness, remote posture, and next safe Git step.

# Guardrails

- never assume `main` is safe for direct commits
- refuse checkout, pull, reset, clean, or rebase before inspection
- call out missing or suspicious remotes explicitly

# Output Expectations

- current branch
- concise worktree summary
- remote summary
- explicit go or stop decision with reason

# Examples

## EX-001. Start an agent session in a clean repository

- Context: a user asks the agent to update documentation in a repository with no visible pending work.
- Objective: confirm that the repository is safe for a new task.
- Preconditions: `git status --short --branch` reports a clean worktree on `feature/142-docs-refresh`; `origin` is configured.
- Actions: run the three inspection commands; confirm there is no merge, rebase, or detached `HEAD`; report the branch and cleanliness; proceed to the requested task.
- Expected result: the agent states that the repository is clean, the branch is known, and work may continue safely.
- Guardrails: still warn if the current branch is protected or unexpected for the requested task.
- Concerned skill: `git-agent-session-start`

## EX-004. Start an agent session in detached HEAD state

- Context: the user asks for a quick patch, but the repository is checked out at a raw commit.
- Objective: detect the detached `HEAD` before any commit-producing action.
- Preconditions: `git branch --show-current` is empty and `git status --short --branch` shows `## HEAD (no branch)`.
- Actions: inspect branch and remotes; explain that any commit would be difficult to trace; ask whether to create or switch to a proper branch first.
- Expected result: the agent refuses to continue with normal branch-based work until the branch situation is clarified.
- Guardrails: do not create commits from detached `HEAD` without explicit confirmation and branch intent.
- Concerned skill: `git-agent-session-start`

# Related References

- `references/concepts.md`
- `references/decision-rules.md`
- `references/examples.md`
- `assets/examples/sample-scenarios.md`
