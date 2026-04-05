---
name: git-conflict-resolution-playbook
description: Use this skill when you need to resolve Git merge or rebase conflicts methodically, document the chosen resolution, and validate the repository before continuing.
---

# Purpose

Resolve conflicts deliberately and leave an auditable summary of the chosen outcome.

# When To Use

- during merge conflicts
- during rebase conflicts
- when a user needs help validating a post-conflict state

# When Not To Use

- when the issue is only divergence detection
- when the goal is to undo a completed change rather than resolve an active conflict

# Required Inputs

- conflicting branch or rebase context
- list of conflicting files
- expected source of truth for each conflict

# Ordered Procedure

1. Identify whether the repository is in merge or rebase mode.
2. List conflicting files and classify them by code, docs, generated, or binary content.
3. Resolve each file using the intended outcome, not marker deletion alone.
4. Re-check status and stage only resolved files.
5. Summarize what was chosen, why, and what remains.

# Guardrails

- never continue a merge or rebase without verifying `git status`
- document conflict choices when they are not obvious
- treat binary or generated-file conflicts as policy decisions, not blind merges

# Output Expectations

- conflict mode
- files resolved
- summary of chosen resolutions
- final validation status before continue

# Examples

## EX-036. Resolve a simple merge conflict

- Context: two branches changed the same function signature in one source file during a merge.
- Objective: produce one correct merged function and continue the merge safely.
- Preconditions: `git status` shows an in-progress merge and one textual conflict file.
- Actions: open the conflicted file; compare both intent lines; keep the correct combined signature; remove markers; stage the file; confirm only resolved files remain.
- Expected result: the merge can proceed with the intended behavior preserved.
- Guardrails: do not pick one side blindly if both sides carry necessary logic.
- Concerned skill: `git-conflict-resolution-playbook`

## EX-040. Validate final state after conflict resolution

- Context: conflict markers are gone, but the repository still needs confirmation before continuing.
- Objective: verify that the conflict phase is truly complete.
- Preconditions: all candidate conflict files were edited and staged.
- Actions: run `git status`; verify no unmerged paths remain; run targeted checks or tests relevant to the touched files; summarize the final state before `git merge --continue` or `git rebase --continue`.
- Expected result: the agent proceeds only when Git and the local validation signals agree that the conflict is resolved.
- Guardrails: do not continue solely because files were edited; require explicit status confirmation.
- Concerned skill: `git-conflict-resolution-playbook`

# Related References

- `references/concepts.md`
- `references/decision-rules.md`
- `references/examples.md`
- `assets/examples/sample-scenarios.md`
