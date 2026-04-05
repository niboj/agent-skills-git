# Git Foundations

## Scope

This reference consolidates the Git concepts reused across the Git skills in this repository.

## Core objects

- `working tree` : local files currently edited.
- `index` or `staging area` : content selected for the next commit.
- `commit` : immutable snapshot with metadata.
- `branch` : movable pointer to a commit.
- `remote-tracking branch` : local view of a remote branch, such as `origin/main`.
- `tag` : stable name attached to a commit, usually for releases.

## Inspection first

Before any write operation, inspect:

- `git status --short --branch`
- `git branch --show-current`
- `git remote -v`
- `git log --oneline --decorate -n 10`

## Safe operating principles

- never assume the current branch is correct ;
- never assume the worktree is clean ;
- separate reviewable changes from housekeeping ;
- prefer fetch plus explicit decision over implicit `git pull` ;
- prefer reversible actions when history is already shared.

## Shared vocabulary used in the skills

- `protected branch` : branch that must not receive direct commits, destructive rewrites or unsafe deletion.
- `personal branch` : branch owned by one contributor and not used as the integration base.
- `shared branch` : branch consumed by multiple contributors or automation.
- `destructive command` : command that may discard commits, index state or worktree content.
