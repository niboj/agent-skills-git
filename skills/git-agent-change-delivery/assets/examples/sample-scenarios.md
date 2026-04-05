# Sample Scenarios

## EX-048. Produce a final summary of the changes made by the agent

- Context: the implementation is finished and the user asks what changed.
- Objective: produce a concise but complete final delivery summary.
- Preconditions: the agent has already inspected the final diff or commit set and knows which checks were run.
- Actions: summarize the feature or fix in one to three points; explain why the change was made; list validations and any remaining risks; name the branch and push status.
- Expected result: the user or reviewer can understand the delivered work without reading every command output.
- Guardrails: keep the summary evidence-based and consistent with the actual diff.
- Concerned skill: `git-agent-change-delivery`
