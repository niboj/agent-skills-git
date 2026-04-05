---
name: git-agent-change-delivery
description: Use this skill when you need to deliver a complete Git change from inspected repository state through commit, push, and final human-facing summary.
---

# Purpose

Coordinate the final Git delivery path for an agent-driven change.

# When To Use

- when a task should be carried from local change to push
- when the user expects a final Git-oriented delivery summary
- when handoff to human review must be prepared

# When Not To Use

- when the task stops before commit or push
- when the repository state is unsafe and another skill should block first

# Required Inputs

- repository state summary
- branch and remote target
- validations performed

# Ordered Procedure

1. Confirm the branch, worktree, and remote are suitable for delivery.
2. Ensure commits are atomic and the branch is synchronized enough to push.
3. Push or prepare the push path.
4. Produce a short final summary of what changed and why.
5. Record what a human reviewer should verify next.

# Guardrails

- do not deliver from `main`
- do not push unresolved local ambiguity
- summarize validation and follow-up explicitly

# Output Expectations

- push result or next push command
- concise change summary
- reviewer handoff notes

# Examples

## EX-047. Deliver a complete change end-to-end

- Context: the agent has finished implementation and must take the branch from inspection through push.
- Objective: execute the full delivery flow safely and traceably.
- Preconditions: the worktree is understood; the branch is correct; commits are ready; remote access is configured.
- Actions: inspect state; verify branch policy; ensure commits are reviewable; push the branch; report the branch name, remote destination, and resulting next step.
- Expected result: the change is available remotely on the intended branch with a clear delivery summary.
- Guardrails: stop if the branch is protected or if local state still contains unrelated changes.
- Concerned skill: `git-agent-change-delivery`

## EX-049. Prepare human review handoff after delivery

- Context: the branch was pushed and now needs a human reviewer to take over.
- Objective: provide the minimum useful review handoff package.
- Preconditions: the remote branch exists and the delivered change summary is known.
- Actions: list the branch, target branch, validations performed, risky areas, and any open questions that the reviewer should inspect first.
- Expected result: a human reviewer can begin review without reconstructing the entire change context from scratch.
- Guardrails: keep the handoff factual; do not claim validations that were not run.
- Concerned skill: `git-agent-change-delivery`

# Related References

- `references/concepts.md`
- `references/decision-rules.md`
- `references/examples.md`
- `assets/examples/sample-scenarios.md`
