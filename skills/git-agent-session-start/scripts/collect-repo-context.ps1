param(
    [string]$RepoPath = "."
)

$resolved = Resolve-Path -LiteralPath $RepoPath
Push-Location $resolved
try {
    $status = git status --short --branch
    $branch = git branch --show-current
    $remotes = git remote -v
    $top = git rev-parse --show-toplevel

    @(
        "# Repository Context"
        ""
        "- Top level: $top"
        "- Current branch: $branch"
        ""
        "## Status"
        "```text"
        $status
        "```"
        ""
        "## Remotes"
        "```text"
        $remotes
        "```"
    ) -join [Environment]::NewLine
}
finally {
    Pop-Location
}
