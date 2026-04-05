---
name: git-undo-and-recovery
description: Use this skill when you need to undo a Git change, recover lost work, or choose safely between restore, reset, revert, and reflog-based recovery.
---

# Purpose

Undo or recover Git state without confusing local cleanup and shared-history repair.

# When To Use

- when the user asks to undo recent work
- when a file or branch appears lost
- when choosing between restore, reset, revert, or reflog

# When Not To Use

- when the problem is active conflict resolution
- when the task is simply creating a new corrective commit

# Required Inputs

- whether the target change is local or shared
- object to recover or undo
- tolerance for history rewrite

# Ordered Procedure

1. Inspect branch, status, and whether the target commit was shared.
2. Classify the request as file restore, local history edit, published undo, or lost-work recovery.
3. Choose the least destructive suitable command.
4. Explain the consequence before execution.
5. Summarize the recovered or reverted state after the action.

# Guardrails

- prefer `revert` for published history
- use `reset` only with explicit understanding of local-only consequences
- capture reflog references before additional destructive actions

# Output Expectations

- chosen recovery method
- justification for that method
- final state and remaining follow-up

# Examples

## EX-041. Undo the last local commit without losing files

- Context: the latest local commit should be redone, but the file changes must stay available.
- Objective: move `HEAD` back while preserving the worktree.
- Preconditions: the last commit is local only and has not been pushed.
- Actions: inspect sharing status; choose `git reset --soft HEAD~1` or `git reset --mixed HEAD~1` depending on whether the changes should remain staged; explain the difference first.
- Expected result: the commit disappears from history, but the file content remains available for recommit.
- Guardrails: do not use this path if the commit was already shared.
- Concerned skill: `git-undo-and-recovery`

## EX-045. Recover a deleted branch with reflog

- Context: a local branch was deleted, but its recent tip commit is still needed.
- Objective: restore the branch reference from reflog history.
- Preconditions: the commit or branch tip still appears in `git reflog` or another reachable reference log.
- Actions: inspect reflog entries; locate the lost tip; recreate the branch from that commit; verify the branch contents before further work.
- Expected result: the deleted branch is restored with its recent history intact.
- Guardrails: record the chosen reflog entry before running more cleanup commands.
- Concerned skill: `git-undo-and-recovery`

# Related References

- `references/concepts.md`
- `references/decision-rules.md`
- `references/examples.md`
- `assets/examples/sample-scenarios.md`
