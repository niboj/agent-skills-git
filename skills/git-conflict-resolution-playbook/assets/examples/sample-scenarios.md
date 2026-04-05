# Sample Scenarios

## EX-038. Handle a conflict on a binary or generated file

- Context: a merge conflict occurs on a compiled lockfile or generated asset that should not be hand-edited.
- Objective: resolve the conflict according to generation policy instead of manual merge.
- Preconditions: the conflicting file is binary or documented as generated output.
- Actions: identify the authoritative source; choose one side or regenerate the file from source; stage the regenerated or selected artifact; note the policy used.
- Expected result: the repository contains a clean, reproducible artifact instead of an improvised manual merge.
- Guardrails: do not hand-edit generated output if the repository expects regeneration from source inputs.
- Concerned skill: `git-conflict-resolution-playbook`

## EX-039. Produce a summary of resolved conflicts and chosen outcomes

- Context: several files were resolved and reviewers need to understand the choices.
- Objective: produce a compact but explicit conflict-resolution summary.
- Preconditions: all conflicts are resolved locally and the repository is ready to continue.
- Actions: list each conflicted file; record whether local, incoming, or combined content was kept; note any regenerated files or dropped hunks; attach the summary to the delivery notes or PR update.
- Expected result: collaborators can audit the conflict choices without reading raw conflict markers.
- Guardrails: keep the summary factual and limited to actual resolution decisions.
- Concerned skill: `git-conflict-resolution-playbook`
