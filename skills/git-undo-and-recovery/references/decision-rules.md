# Decision Rules

- Use `restore` for file-level rollback.
- Use `reset` only for local-only history surgery.
- Use `revert` for already shared commits.
- Use `reflog` when references seem lost after branch deletion, reset, or checkout mistakes.
