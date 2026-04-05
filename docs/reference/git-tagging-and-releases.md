# Git Tagging And Releases

## Annotated tags

Use annotated tags for releases because they carry author, date and message metadata.

## Release preparation

- verify branch and remote state ;
- collect commits since the previous tag ;
- summarize user-facing impact, operational risk and rollback notes ;
- ensure the release point is already reviewed or otherwise approved.

## Tagging rules

- do not tag from a dirty worktree ;
- avoid moving an already published release tag unless an explicit incident process allows it ;
- if a correction is needed after publication, create a new tag instead of silently retagging.
