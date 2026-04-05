---
name: git-agent-refuse-unsafe-state
description: Use this skill when the Git repository is in an unsafe or ambiguous state and the agent must stop, explain the risk, and route to the safest next action.
---

# Purpose

Block risky Git actions when the repository state is not safe enough to proceed.

# When To Use

- when the worktree is dirty before a risky command
- when remotes are missing or suspicious
- when the current state could cause overwrite, loss, or unreviewable history changes

# When Not To Use

- when the repository is already known to be safe and a narrower Git skill can continue directly
- when the task is purely informational with no repository interaction

# Required Inputs

- current status
- branch and remote state
- requested next action

# Ordered Procedure

1. Inspect status, branch, remotes, and in-progress operations.
2. Identify the concrete risk condition.
3. Refuse the requested unsafe action.
4. Explain the reason and the minimal safe alternatives.
5. Route the user to the appropriate follow-up skill.

# Guardrails

- prefer explicit refusal over silent workaround
- do not auto-stash or auto-reset to “make progress”
- explain the exact state signal that caused the refusal

# Output Expectations

- risk classification
- refused action
- safe alternatives
- recommended next skill

# Examples

## EX-003. Start an agent session with modified uncommitted files

- Context: a user asks for a branch sync, but the repository already contains edited tracked files.
- Objective: stop the agent before a command could overwrite or entangle that local work.
- Preconditions: `git status --short --branch` shows modified tracked files and no clear instruction exists for those edits.
- Actions: inspect the branch and remotes; classify the state as unsafe for sync; refuse the requested pull or checkout; propose commit, stash with approval, or a dedicated cleanup path.
- Expected result: the local edits remain visible and are not accidentally mixed into another operation.
- Guardrails: do not proceed with merge, rebase, checkout, reset, or clean until ownership of the changes is explicit.
- Concerned skill: `git-agent-refuse-unsafe-state`

## EX-005. Start an agent session with a missing or misconfigured remote

- Context: the user expects synchronization or push, but `origin` is absent or points to an unexpected URL.
- Objective: prevent sync or delivery work against an unknown remote target.
- Preconditions: `git remote -v` is empty or shows an unexpected remote mapping.
- Actions: inspect remotes; state the mismatch; refuse fetch, pull, or push actions until the remote policy is clarified.
- Expected result: no networked Git command is run against an uncertain target.
- Guardrails: do not guess the intended remote or silently add one.
- Concerned skill: `git-agent-refuse-unsafe-state`

# Related References

- `references/concepts.md`
- `references/decision-rules.md`
- `references/examples.md`
- `assets/examples/sample-scenarios.md`
