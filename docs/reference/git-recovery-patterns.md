# Git Recovery Patterns

## Recovery toolbox

- `git restore` for file content recovery in the worktree or index.
- `git reset --soft` to move `HEAD` while keeping staged changes.
- `git reset --mixed` to move `HEAD` while keeping files but unstaging them.
- `git revert` to undo published changes with a new commit.
- `git reflog` to find lost commit references after history edits.
- `git stash` only for short-lived parking, not as primary recovery documentation.

## Safety heuristics

- prefer `revert` once commits are shared ;
- prefer file-level recovery before branch-wide reset ;
- capture `git reflog` entries before running another destructive command ;
- summarize exactly what was recovered and from where.
