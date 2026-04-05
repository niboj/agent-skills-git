# Examples

## EX-020. Detect divergence between local and remote history

- Context: a branch has both local commits and remote commits that the other side does not yet have.
- Objective: identify that the branch has diverged before integrating.
- Preconditions: `git fetch` has been run and `git status --short --branch` reports ahead and behind counts or log comparison confirms both sides differ.
- Actions: compare `HEAD`, `@{upstream}`, and merge base; list local-only and remote-only commits; summarize whether the branch is personal or shared.
- Expected result: the agent can explain the divergence in concrete commit terms before choosing merge or rebase.
- Guardrails: do not integrate blindly when the divergence story is still unclear.
- Concerned skill: `git-pull-sync-strategy`

## EX-021. Choose merge instead of rebase according to policy

- Context: a team branch already reviewed by others must ingest new upstream commits.
- Objective: preserve shared commit identities and avoid surprising collaborators.
- Preconditions: the branch has remote commits used by multiple people or automation; rebase would rewrite published history.
- Actions: inspect branch sharing status; explain why rebase is risky here; choose an explicit merge and record the reason.
- Expected result: the branch history remains stable for collaborators, and the integration choice is documented.
- Guardrails: avoid merge commits for purely personal branches unless policy explicitly prefers them.
- Concerned skill: `git-pull-sync-strategy`
