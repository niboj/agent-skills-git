param(
    [string]$Tag
)

if (-not $Tag) {
    $Tag = git describe --tags --abbrev=0
}

git log --oneline "$Tag..HEAD"
