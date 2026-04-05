# Decision Rules

- If the worktree is clean and branch plus remotes are known, proceed.
- If untracked or modified files exist, summarize them and decide whether another skill should handle the risk.
- If `HEAD` is detached, stop before any commit-producing action.
- If no expected remote exists, stop before sync or delivery work.
