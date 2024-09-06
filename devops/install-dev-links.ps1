$linkPathBp = Join-Path -Path (Get-Location) -ChildPath "../development_behavior_packs/tcc-jello"
$targetPathBp = Join-Path -Path (Get-Location) -ChildPath "tcc-jello-bp"

if (Test-Path $linkPathBp) {
    Remove-Item -Path $linkPathBp -Force
}
New-Item -Path $linkPathBp -ItemType SymbolicLink -Target $targetPathBp

$linkPathRp = Join-Path -Path (Get-Location) -ChildPath "../development_resource_packs/tcc-jello"
$targetPathRp = Join-Path -Path (Get-Location) -ChildPath "tcc-jello-rp"

if (Test-Path $linkPathRp) {
    Remove-Item -Path $linkPathRp -Force
}
New-Item -Path $linkPathRp -ItemType SymbolicLink -Target $targetPathRp