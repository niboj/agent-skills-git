---
name: git-protected-branch-guardrails
description: Use this skill when you need to enforce protected-branch Git rules and block direct commits, unsafe rewrites, or destructive actions on protected refs.
---

# Purpose

Apply hard Git guardrails to protected branches and shared history.

# When To Use

- before commits, pushes, deletes, or history rewrites
- when branch protection rules may apply
- when the user requests a risky Git command

# When Not To Use

- when the problem is only commit wording or PR writing
- when no branch-level risk exists

# Required Inputs

- current branch
- protected branch patterns
- requested Git action

# Ordered Procedure

1. Inspect current branch and remotes.
2. Evaluate the branch against protected-pattern rules.
3. Check whether the requested action changes history, deletes refs, or bypasses review.
4. Refuse, allow, or require escalation based on the rule set.
5. Explain the decision and the safer alternative.

# Guardrails

- never permit direct commits on `main`
- never permit force push on a protected branch
- prefer `--force-with-lease` only on explicitly allowed personal branches

# Output Expectations

- branch classification
- allowed or refused action
- reason and alternative path

# Examples

## EX-030. Refuse a direct commit on main

- Context: a user asks the agent to commit a quick fix while currently on `main`.
- Objective: enforce the no-direct-commit rule on the protected integration branch.
- Preconditions: current branch is `main`; branch policy treats `main` as protected.
- Actions: inspect branch; refuse the commit request; instruct the user to create a fix or hotfix branch instead.
- Expected result: no commit is created on `main`.
- Guardrails: do not weaken the rule because the change looks small.
- Concerned skill: `git-protected-branch-guardrails`

## EX-033. Allow --force-with-lease on a personal branch

- Context: a contributor wants to clean up a personal branch after an interactive rewrite that has not affected shared review yet.
- Objective: allow the safer form of force push on a branch that is explicitly not protected.
- Preconditions: the branch naming rules classify the branch as personal; no protected pattern matches; the user confirmed the intent to rewrite that branch only.
- Actions: classify the branch; explain why `--force-with-lease` is safer than `--force`; allow only the lease-protected form.
- Expected result: the agent permits the least risky force-push variant allowed by policy.
- Guardrails: if the branch is shared or ambiguous, refuse and ask for clarification.
- Concerned skill: `git-protected-branch-guardrails`

# Related References

- `references/concepts.md`
- `references/decision-rules.md`
- `references/examples.md`
- `assets/examples/sample-scenarios.md`
