---
name: git-pull-request-workflow
description: Use this skill when you need to prepare, update, or validate a Git pull request with a clear change summary, validations, risks, and review context.
---

# Purpose

Prepare a reviewable pull request package from an already scoped branch.

# When To Use

- before opening a pull request
- when reviewers asked for updates and the branch changed
- when the user needs a concise PR summary from the diff

# When Not To Use

- when the branch itself is unsafe or not synchronized yet
- when the task is only about local commits without review delivery

# Required Inputs

- source branch and target branch
- diff or commit range
- validations performed

# Ordered Procedure

1. Inspect branch status and target branch.
2. Summarize what changed from the diff or commit range.
3. Record validations, risks, impacts, and follow-up items.
4. Fill a reusable PR template.
5. Refuse publication if the review package is materially incomplete.

# Guardrails

- refuse a PR without validation summary
- do not hide migration, rollback, or compatibility risk
- keep the summary tied to the actual diff

# Output Expectations

- PR title and summary
- validations performed
- risks and impacts
- reviewer-focused notes

# Examples

## EX-024. Prepare a clear and concise pull request

- Context: a feature branch is ready for review after local checks passed.
- Objective: build a PR description that lets a reviewer understand the change quickly.
- Preconditions: the branch is pushed; target branch is known; the diff has been inspected.
- Actions: summarize the user-visible and technical change; list validations; note any risky areas; populate the PR template.
- Expected result: reviewers receive a concise, review-ready PR description grounded in the actual diff.
- Guardrails: avoid copy-pasting raw commit history when a synthesized summary is clearer.
- Concerned skill: `git-pull-request-workflow`

## EX-029. Refuse opening a pull request without a validation summary

- Context: a user wants to open a PR, but no tests, checks, or manual validations are documented.
- Objective: block a review request that lacks basic verification context.
- Preconditions: the diff exists and may be reviewable, but the validation section is empty.
- Actions: inspect the current draft; explain why the PR is incomplete; ask for the performed validations or for an explicit statement that none were run.
- Expected result: the PR is delayed until validation status is recorded clearly.
- Guardrails: do not fabricate validations from assumption.
- Concerned skill: `git-pull-request-workflow`

# Related References

- `references/concepts.md`
- `references/decision-rules.md`
- `references/examples.md`
- `assets/examples/sample-scenarios.md`
