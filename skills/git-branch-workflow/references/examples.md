# Examples

## EX-008. Name a branch correctly with a ticket identifier

- Context: the user wants a branch for ticket `OPS-77` about log rotation.
- Objective: transform a vague branch name into a compliant traceable name.
- Preconditions: the base branch is known and the organization expects ticket-linked branch names.
- Actions: identify the work type as a fix; derive `fix/OPS-77-log-rotation`; explain the prefix and slug choice.
- Expected result: the resulting branch name communicates scope and ticket linkage.
- Guardrails: keep names short, lower-case after the ticket, and stable after publication.
- Concerned skill: `git-branch-workflow`
