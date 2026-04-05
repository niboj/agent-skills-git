param(
    [string]$Branch,
    [string[]]$ProtectedPatterns = @('main', 'release/*', 'stabilization/*')
)

if (-not $Branch) {
    $Branch = git branch --show-current
}

$matched = $null
foreach ($pattern in $ProtectedPatterns) {
    if ($Branch -like $pattern) {
        $matched = $pattern
        break
    }
}

[pscustomobject]@{
    branch = $Branch
    isProtected = [bool]$matched
    matchedPattern = $matched
} | ConvertTo-Json -Depth 2
