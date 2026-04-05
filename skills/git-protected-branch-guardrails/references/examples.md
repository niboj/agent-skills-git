# Examples

## EX-031. Refuse a force push on main

- Context: the user wants to overwrite `origin/main` after local history cleanup.
- Objective: stop a destructive rewrite on a protected branch.
- Preconditions: current branch or target ref is `main`; policy marks it protected.
- Actions: inspect branch classification; reject the force push; propose creating a corrective branch or using `revert` instead.
- Expected result: no force push is attempted against `main`.
- Guardrails: do not substitute `--force-with-lease`; protected status still forbids it.
- Concerned skill: `git-protected-branch-guardrails`

## EX-034. Refuse history rewrite on a shared branch

- Context: a release branch is used by multiple contributors and the user asks to rebase and force-push it.
- Objective: preserve stable shared history.
- Preconditions: the branch is not personal and collaborators or automation depend on it.
- Actions: classify the branch as shared; explain why rewriting it is unsafe; suggest a merge, revert, or new corrective commit path.
- Expected result: the shared branch history remains intact.
- Guardrails: do not permit rewrite merely because the branch is not named `main`.
- Concerned skill: `git-protected-branch-guardrails`

## EX-035. Distinguish a protected branch from a personal branch through configurable rules

- Context: the repository treats `main`, `release/*`, and `stabilization/*` as protected, while `feature/*` and `fix/*` are personal by default.
- Objective: classify branches through explicit patterns instead of ad hoc judgment.
- Preconditions: the repository exposes or documents a pattern list for branch classes.
- Actions: compare the current branch to the configured patterns; explain which rule matched; derive the permitted action set from that classification.
- Expected result: branch protection decisions are predictable and auditable.
- Guardrails: when no rule matches, default to the safer interpretation until clarified.
- Concerned skill: `git-protected-branch-guardrails`
