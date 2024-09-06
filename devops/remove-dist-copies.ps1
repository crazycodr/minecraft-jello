$linkPathBp = Join-Path -Path (Get-Location) -ChildPath "../behavior_packs/tcc-jello"
$linkPathBpZip = Join-Path -Path (Get-Location) -ChildPath "../behavior_packs/tcc-jello.zip"

if (Test-Path $linkPathBp) {
    Remove-Item -Path $linkPathBp -Force
}
if (Test-Path $linkPathBpZip) {
    Remove-Item -Path $linkPathBpZip -Force
}

$linkPathRp = Join-Path -Path (Get-Location) -ChildPath "../resource_packs/tcc-jello"
$linkPathRpZip = Join-Path -Path (Get-Location) -ChildPath "../resource_packs/tcc-jello.zip"

if (Test-Path $linkPathRp) {
    Remove-Item -Path $linkPathRp -Force
}
if (Test-Path $linkPathRpZip) {
    Remove-Item -Path $linkPathRpZip -Force
}