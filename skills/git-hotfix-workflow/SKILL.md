---
name: git-hotfix-workflow
description: Use this skill when you need to create, deliver, and document an urgent Git hotfix from the correct protected base without bypassing review and safety rules.
---

# Purpose

Handle urgent fixes through a controlled branch, validation, and delivery path.

# When To Use

- when a production or release issue needs urgent correction
- when a fix must branch from a stabilization or release base
- when the hotfix needs a concise delivery checklist

# When Not To Use

- when the work can follow the normal feature workflow
- when the repository state is still unsafe or unclear

# Required Inputs

- incident or ticket identifier
- release or stabilization base branch
- validation expectations for the urgent fix

# Ordered Procedure

1. Inspect branch, status, remotes, and protected-branch rules.
2. Confirm the hotfix base branch is the correct released or stabilization ref.
3. Create a compliant hotfix branch.
4. Implement, validate, and prepare review or emergency approval notes.
5. Deliver the branch and record rollback or follow-up expectations.

# Guardrails

- never patch `main` directly
- keep the hotfix diff narrowly scoped
- state any review shortcut or operational risk explicitly

# Output Expectations

- hotfix branch name
- chosen base branch
- validation summary
- delivery and rollback notes

# Examples

## EX-007. Create a fix branch from a stabilization branch

- Context: release `2.4` has a production-only issue that must be corrected without waiting for the next feature cycle.
- Objective: branch the hotfix from the stabilization line instead of from `main`.
- Preconditions: `stabilization/2.4` exists and represents the deployed line; the worktree is clean.
- Actions: inspect status and protected-branch rules; verify the stabilization branch is the right base; create `hotfix/OPS-241-timeout-rollback`.
- Expected result: the urgent fix starts from the same line that needs correction in production.
- Guardrails: do not branch from `main` if production is not currently running that line.
- Concerned skill: `git-hotfix-workflow`

## EX-028. Prepare a pull request for an urgent correction

- Context: the hotfix branch is ready and needs an expedited but still reviewable pull request.
- Objective: prepare a concise PR that emphasizes urgency, validation, and rollback posture.
- Preconditions: the hotfix diff is small, validated as much as possible, and pushed to the remote.
- Actions: summarize the incident and the exact fix; list emergency validations; state deployment risk and rollback notes; fill the hotfix checklist and PR template.
- Expected result: reviewers and operators can assess the urgent fix quickly without losing traceability.
- Guardrails: urgency does not justify omitting risk or validation status.
- Concerned skill: `git-hotfix-workflow`

# Related References

- `references/concepts.md`
- `references/decision-rules.md`
- `references/examples.md`
