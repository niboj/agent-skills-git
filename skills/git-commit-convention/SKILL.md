---
name: git-commit-convention
description: Use this skill when you need to stage, split, and describe Git commits so each commit carries one clear intent with a traceable message.
---

# Purpose

Produce small, readable, policy-compliant commits.

# When To Use

- before creating one or more commits
- when staged changes are too broad
- when commit wording is unclear or too vague

# When Not To Use

- when the issue is branch protection or pull-request assembly
- when undo or recovery is the primary problem

# Required Inputs

- change summary
- staged or unstaged diff
- ticket reference if applicable

# Ordered Procedure

1. Inspect status and diff shape.
2. Group files by single intent.
3. Stage only one intent at a time.
4. Write a commit subject and optional body that explain what changed and why.
5. Verify the staged diff before committing.

# Guardrails

- refuse catch-all subjects such as `update files`
- prefer multiple atomic commits over one mixed commit
- include ticket references when policy or context requires them

# Output Expectations

- commit grouping rationale
- final commit message
- note about remaining uncommitted changes, if any

# Examples

## EX-011. Prepare an atomic commit with one intent

- Context: a branch contains a bug fix and a formatting sweep mixed in the same worktree.
- Objective: isolate the bug fix into one commit.
- Preconditions: both change sets are local and unstaged; the agent can inspect the diff by file or hunk.
- Actions: inspect the diff; stage only the bug-fix hunks; verify the staged diff matches one intent; leave formatting changes unstaged for a later commit.
- Expected result: one commit contains only the bug fix and is easy to review.
- Guardrails: do not hide unrelated cleanup inside a bug-fix commit.
- Concerned skill: `git-commit-convention`

## EX-017. Refuse a vague commit message

- Context: the prepared commit message is `update files`.
- Objective: replace a non-informative subject with a traceable message.
- Preconditions: the staged diff has already been reviewed and its intent is known.
- Actions: reject the vague subject; infer the actual change intent from the staged diff; rewrite the message using a typed prefix and specific scope.
- Expected result: the final subject communicates intent without reading the full diff.
- Guardrails: do not guess a message that conflicts with the diff; ask for clarification if the intent is still mixed.
- Concerned skill: `git-commit-convention`

# Related References

- `references/concepts.md`
- `references/decision-rules.md`
- `references/examples.md`
- `assets/examples/sample-scenarios.md`
