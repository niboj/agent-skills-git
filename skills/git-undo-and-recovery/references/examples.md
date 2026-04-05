# Examples

## EX-042. Reset one file to its previous state

- Context: a single file edit should be discarded while the rest of the worktree stays intact.
- Objective: restore just that file.
- Preconditions: the repository is otherwise in a normal state and the desired source revision is known or defaults to `HEAD`.
- Actions: inspect the file diff; run `git restore --source=HEAD -- path/to/file`; verify the file is back to the intended state.
- Expected result: only the selected file is restored.
- Guardrails: do not replace whole-branch history when only one file needs recovery.
- Concerned skill: `git-undo-and-recovery`

## EX-043. Undo a shared commit with revert

- Context: a bad commit was already pushed to a shared branch.
- Objective: repair the branch without rewriting its published history.
- Preconditions: the problematic commit hash is known and downstream users may already depend on it.
- Actions: inspect branch sharing; explain why `revert` is preferred; create a revert commit; verify the resulting diff and status.
- Expected result: the shared branch gains a new corrective commit that safely undoes the earlier change.
- Guardrails: do not use reset and force-push as a shortcut on shared history.
- Concerned skill: `git-undo-and-recovery`

## EX-044. Explain why reset is not appropriate on shared history

- Context: a user proposes `git reset --hard` on a branch already pushed for review.
- Objective: explain the risk of rewriting published commit identities.
- Preconditions: the commit history is shared and reviewers or automation may already reference it.
- Actions: compare reset versus revert in terms of history effects; explain collaborator impact; recommend a safer alternative.
- Expected result: the user understands why local history editing is not interchangeable with shared-history repair.
- Guardrails: keep the explanation specific to the branch and sharing context.
- Concerned skill: `git-undo-and-recovery`
