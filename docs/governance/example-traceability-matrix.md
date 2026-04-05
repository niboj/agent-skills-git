# Example Traceability Matrix

This matrix records the authoritative source location for each mandatory example.

| ID | Title | Concerned skill | Source file |
| --- | --- | --- | --- |
| EX-001 | Start an agent session in a clean repository | `git-agent-session-start` | `skills/git-agent-session-start/SKILL.md` |
| EX-002 | Start an agent session with untracked files | `git-agent-session-start` | `skills/git-agent-session-start/references/examples.md` |
| EX-003 | Start an agent session with modified uncommitted files | `git-agent-refuse-unsafe-state` | `skills/git-agent-refuse-unsafe-state/SKILL.md` |
| EX-004 | Start an agent session in detached HEAD state | `git-agent-session-start` | `skills/git-agent-session-start/SKILL.md` |
| EX-005 | Start an agent session with a missing or misconfigured remote | `git-agent-refuse-unsafe-state` | `skills/git-agent-refuse-unsafe-state/SKILL.md` |
| EX-006 | Create a feature branch from main | `git-branch-workflow` | `skills/git-branch-workflow/SKILL.md` |
| EX-007 | Create a fix branch from a stabilization branch | `git-hotfix-workflow` | `skills/git-hotfix-workflow/SKILL.md` |
| EX-008 | Name a branch correctly with a ticket identifier | `git-branch-workflow` | `skills/git-branch-workflow/references/examples.md` |
| EX-009 | Refuse branch creation from a stale base | `git-branch-workflow` | `skills/git-branch-workflow/SKILL.md` |
| EX-010 | Rename a local branch to meet convention | `git-branch-workflow` | `skills/git-branch-workflow/assets/examples/sample-scenarios.md` |
| EX-011 | Prepare an atomic commit with one intent | `git-commit-convention` | `skills/git-commit-convention/SKILL.md` |
| EX-012 | Split an overly broad change into several commits | `git-commit-convention` | `skills/git-commit-convention/assets/examples/sample-scenarios.md` |
| EX-013 | Write a feat commit message | `git-commit-convention` | `skills/git-commit-convention/references/examples.md` |
| EX-014 | Write a fix commit message | `git-commit-convention` | `skills/git-commit-convention/references/examples.md` |
| EX-015 | Write a docs commit message | `git-commit-convention` | `skills/git-commit-convention/references/examples.md` |
| EX-016 | Write a refactor commit message | `git-commit-convention` | `skills/git-commit-convention/assets/examples/sample-scenarios.md` |
| EX-017 | Refuse a vague commit message | `git-commit-convention` | `skills/git-commit-convention/SKILL.md` |
| EX-018 | Produce a commit with explanatory body and ticket reference | `git-commit-convention` | `skills/git-commit-convention/references/examples.md` |
| EX-019 | Sync a local branch with fetch and rebase | `git-pull-sync-strategy` | `skills/git-pull-sync-strategy/SKILL.md` |
| EX-020 | Detect divergence between local and remote history | `git-pull-sync-strategy` | `skills/git-pull-sync-strategy/references/examples.md` |
| EX-021 | Choose merge instead of rebase according to policy | `git-pull-sync-strategy` | `skills/git-pull-sync-strategy/references/examples.md` |
| EX-022 | Refuse an automatic pull on a dirty worktree | `git-pull-sync-strategy` | `skills/git-pull-sync-strategy/SKILL.md` |
| EX-023 | Update a feature branch from main without a needless merge commit | `git-pull-sync-strategy` | `skills/git-pull-sync-strategy/assets/examples/sample-scenarios.md` |
| EX-024 | Prepare a clear and concise pull request | `git-pull-request-workflow` | `skills/git-pull-request-workflow/SKILL.md` |
| EX-025 | Summarize pull request changes from the diff | `git-pull-request-workflow` | `skills/git-pull-request-workflow/references/examples.md` |
| EX-026 | Add a risks and impacts section to a pull request | `git-pull-request-workflow` | `skills/git-pull-request-workflow/references/examples.md` |
| EX-027 | Update a branch after review comments | `git-pull-request-workflow` | `skills/git-pull-request-workflow/assets/examples/sample-scenarios.md` |
| EX-028 | Prepare a pull request for an urgent correction | `git-hotfix-workflow` | `skills/git-hotfix-workflow/SKILL.md` |
| EX-029 | Refuse opening a pull request without a validation summary | `git-pull-request-workflow` | `skills/git-pull-request-workflow/SKILL.md` |
| EX-030 | Refuse a direct commit on main | `git-protected-branch-guardrails` | `skills/git-protected-branch-guardrails/SKILL.md` |
| EX-031 | Refuse a force push on main | `git-protected-branch-guardrails` | `skills/git-protected-branch-guardrails/references/examples.md` |
| EX-032 | Refuse deletion of a protected remote branch | `git-protected-branch-guardrails` | `skills/git-protected-branch-guardrails/assets/examples/sample-scenarios.md` |
| EX-033 | Allow --force-with-lease on a personal branch | `git-protected-branch-guardrails` | `skills/git-protected-branch-guardrails/SKILL.md` |
| EX-034 | Refuse history rewrite on a shared branch | `git-protected-branch-guardrails` | `skills/git-protected-branch-guardrails/references/examples.md` |
| EX-035 | Distinguish a protected branch from a personal branch through configurable rules | `git-protected-branch-guardrails` | `skills/git-protected-branch-guardrails/references/examples.md` |
| EX-036 | Resolve a simple merge conflict | `git-conflict-resolution-playbook` | `skills/git-conflict-resolution-playbook/SKILL.md` |
| EX-037 | Resolve a conflict during rebase | `git-conflict-resolution-playbook` | `skills/git-conflict-resolution-playbook/references/examples.md` |
| EX-038 | Handle a conflict on a binary or generated file | `git-conflict-resolution-playbook` | `skills/git-conflict-resolution-playbook/assets/examples/sample-scenarios.md` |
| EX-039 | Produce a summary of resolved conflicts and chosen outcomes | `git-conflict-resolution-playbook` | `skills/git-conflict-resolution-playbook/assets/examples/sample-scenarios.md` |
| EX-040 | Validate final state after conflict resolution | `git-conflict-resolution-playbook` | `skills/git-conflict-resolution-playbook/SKILL.md` |
| EX-041 | Undo the last local commit without losing files | `git-undo-and-recovery` | `skills/git-undo-and-recovery/SKILL.md` |
| EX-042 | Reset one file to its previous state | `git-undo-and-recovery` | `skills/git-undo-and-recovery/references/examples.md` |
| EX-043 | Undo a shared commit with revert | `git-undo-and-recovery` | `skills/git-undo-and-recovery/references/examples.md` |
| EX-044 | Explain why reset is not appropriate on shared history | `git-undo-and-recovery` | `skills/git-undo-and-recovery/references/examples.md` |
| EX-045 | Recover a deleted branch with reflog | `git-undo-and-recovery` | `skills/git-undo-and-recovery/SKILL.md` |
| EX-046 | Restore lost work after an incorrect reset or checkout | `git-undo-and-recovery` | `skills/git-undo-and-recovery/assets/examples/sample-scenarios.md` |
| EX-047 | Deliver a complete change end-to-end | `git-agent-change-delivery` | `skills/git-agent-change-delivery/SKILL.md` |
| EX-048 | Produce a final summary of the changes made by the agent | `git-agent-change-delivery` | `skills/git-agent-change-delivery/assets/examples/sample-scenarios.md` |
| EX-049 | Prepare human review handoff after delivery | `git-agent-change-delivery` | `skills/git-agent-change-delivery/SKILL.md` |
| EX-050 | Create an annotated tag and prepare release notes from commits | `git-version-tagging` | `skills/git-version-tagging/SKILL.md` |
