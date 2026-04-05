# Sample Scenarios

## EX-023. Update a feature branch from main without a needless merge commit

- Context: a local feature branch needs recent `main` changes before opening a pull request.
- Objective: refresh the branch without adding a merge commit that adds no review value.
- Preconditions: the feature branch is personal; its commits are not yet shared; the worktree is clean.
- Actions: fetch remote updates; compare the feature branch to `origin/main`; rebase the feature branch onto the updated base; run post-rebase checks.
- Expected result: the branch contains the latest base commits with no extra merge commit noise.
- Guardrails: if the branch is already shared or reviewers depend on existing commit hashes, stop and reconsider merge.
- Concerned skill: `git-pull-sync-strategy`
