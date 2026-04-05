# Git Branching Strategies

## Baseline strategy used by these skills

- `main` is the protected integration branch.
- feature work starts from an updated base branch.
- stabilization or release branches may exist for controlled fixes.
- hotfix branches start from the released or protected branch that needs repair.

## Naming guidance

- `feature/<ticket>-<slug>`
- `fix/<ticket>-<slug>`
- `hotfix/<ticket>-<slug>`
- `chore/<ticket>-<slug>`

## Branch creation rules

- verify the base branch is synchronized before branching ;
- prefer one intent per branch ;
- rename local branches that do not comply with the naming convention before sharing them.
