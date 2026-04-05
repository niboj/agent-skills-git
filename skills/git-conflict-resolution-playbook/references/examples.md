# Examples

## EX-037. Resolve a conflict during rebase

- Context: a local commit is being replayed during rebase and collides with upstream edits.
- Objective: resolve the file without losing the local commit intent.
- Preconditions: `git status` reports `rebase in progress`; one or more text files contain conflict markers.
- Actions: inspect the upstream and replayed commit intent; edit the file to preserve both where needed; stage the file; continue the rebase only after status confirms resolution.
- Expected result: the rebased commit keeps its original purpose while incorporating upstream changes.
- Guardrails: do not assume the same resolution as a merge conflict; the replay context matters.
- Concerned skill: `git-conflict-resolution-playbook`
