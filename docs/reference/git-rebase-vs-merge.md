# Git Rebase Vs Merge

## Prefer rebase when

- local branch commits are not yet shared ;
- the goal is to replay local work on top of updated `main` ;
- a linear history improves review and delivery clarity.

## Prefer merge when

- the branch history is already shared and collaborators depend on commit identities ;
- the branch intentionally documents integration checkpoints ;
- rebasing would increase confusion or risk.

## Decision rules

- fetch first ;
- compare local branch to `origin/<branch>` ;
- inspect whether commits are shared ;
- if shared history would be rewritten, choose merge or stop.
