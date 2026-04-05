# Examples

## EX-002. Start an agent session with untracked files

- Context: the repository contains new local files that are not yet tracked.
- Objective: prevent accidental overwrite or cleanup.
- Preconditions: `git status --short --branch` shows one or more `??` entries; branch and remote are otherwise valid.
- Actions: inspect branch and remotes; list the untracked files; tell the user that checkout, pull, reset, or clean may affect the state; ask whether the files are disposable, to be added, or to be ignored.
- Expected result: the session pauses with an explicit decision point instead of proceeding blindly.
- Guardrails: do not run `git clean`, branch switches, or destructive sync commands while the ownership of untracked files is unclear.
- Concerned skill: `git-agent-session-start`
