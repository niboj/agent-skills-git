---
name: git-version-tagging
description: Use this skill when you need to create an annotated Git tag, collect commits since the previous release, and prepare release-note inputs safely.
---

# Purpose

Create release tags and release-note inputs from a validated repository state.

# When To Use

- before publishing a release tag
- when collecting commits since the previous version
- when preparing release-note material from Git history

# When Not To Use

- when the branch is still under active implementation without release readiness
- when the task is only about branch sync or pull-request drafting

# Required Inputs

- release version
- source branch or commit
- previous tag, if any

# Ordered Procedure

1. Inspect status, branch, and remotes.
2. Verify the worktree is clean and the source ref is release-eligible.
3. Collect commits since the previous tag.
4. Create the annotated tag and draft release notes.
5. Summarize what was tagged and what still needs human release review.

# Guardrails

- never tag from a dirty worktree
- prefer a new corrective tag over silently moving a published tag
- keep the release-note summary tied to actual commits

# Output Expectations

- tag name
- source commit or branch
- commits included since previous tag
- release-note draft inputs

# Examples

## EX-050. Create an annotated tag and prepare release notes from commits

- Context: the repository is ready to cut release `v2.3.0`.
- Objective: create an annotated tag and compile the commit range since the previous release into release-note inputs.
- Preconditions: the worktree is clean; the release branch or commit is approved; the previous tag is known or discoverable.
- Actions: inspect status and remotes; collect commits since the last tag; write an annotated tag message; prepare a short release summary grouped by user-visible impact and operational notes.
- Expected result: the repository has a new annotated tag candidate and a release-note draft grounded in Git history.
- Guardrails: do not retag an already published version silently; if a mistake is found later, create a new corrective tag.
- Concerned skill: `git-version-tagging`

## Related example. Reuse EX-048 for release-facing final summaries

- Context: release preparation also needs a concise human summary of delivered changes.
- Objective: reuse the delivery-summary pattern once the tag candidate is assembled.
- Preconditions: commit collection is already complete and the release scope is known.
- Actions: combine the commit-range output from this skill with the summary structure from `EX-048`.
- Expected result: the release package contains both a tag and a readable summary.
- Guardrails: keep `EX-050` as the authoritative tagging procedure and use `EX-048` only as the summary companion.
- Concerned skill: `git-version-tagging`

# Related References

- `references/concepts.md`
- `references/decision-rules.md`
- `references/examples.md`
