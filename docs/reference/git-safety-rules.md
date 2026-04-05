# Git Safety Rules

## Mandatory rules

- Never commit directly on `main`.
- Never force push to a protected branch.
- Prefer `--force-with-lease` over `--force` when a force push is explicitly allowed.
- Refuse risky commands when `git status`, current branch or remotes were not inspected first.
- Distinguish cleaning local files from rewriting published history.
- Distinguish `revert` from `reset`.
- Ask for explicit confirmation before destructive or ambiguous commands.

## Unsafe states that require refusal or pause

- detached `HEAD` with uncommitted work ;
- unresolved merge or rebase state ;
- missing or suspicious remote configuration ;
- branch divergence not yet understood ;
- branch name matching protected patterns ;
- unstaged or untracked files that may be overwritten by checkout, pull, reset or clean.

## Preferred delivery principles

- keep changes small and reviewable ;
- write a short summary of what changed and why ;
- favor traceable, reversible actions ;
- leave the repository in a clearly inspectable state.
