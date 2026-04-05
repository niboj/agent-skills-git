param(
    [string]$BaseRef = "HEAD~1",
    [string]$HeadRef = "HEAD"
)

$files = git diff --name-status $BaseRef $HeadRef
$summary = @(
    "# Diff Summary"
    ""
    "- Base: $BaseRef"
    "- Head: $HeadRef"
    ""
    "## Changed Files"
    "```text"
    $files
    "```"
)

$summary -join [Environment]::NewLine
