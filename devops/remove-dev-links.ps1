$linkPathBp = Join-Path -Path (Get-Location) -ChildPath "../development_behavior_packs/tcc-jello"

if (Test-Path $linkPathBp) {
    Remove-Item -Path $linkPathBp -Force
}

$linkPathRp = Join-Path -Path (Get-Location) -ChildPath "../development_resource_packs/tcc-jello"

if (Test-Path $linkPathRp) {
    Remove-Item -Path $linkPathRp -Force
}