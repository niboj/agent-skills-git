# Sample Scenarios

## EX-046. Restore lost work after an incorrect reset or checkout

- Context: local work seems missing after a mistaken `reset` or branch switch.
- Objective: recover the lost changes before more history movement obscures them.
- Preconditions: reflog or stash history still contains the relevant commit or state reference.
- Actions: stop further destructive commands; inspect `git reflog`; identify the last good state; recover it to a new branch or cherry-pick the lost commit; verify the restored diff.
- Expected result: the lost work becomes visible again in a safe location.
- Guardrails: avoid running additional resets before capturing the reflog entry to recover.
- Concerned skill: `git-undo-and-recovery`
