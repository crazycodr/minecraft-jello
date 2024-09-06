$targetPathBp = Join-Path -Path (Get-Location) -ChildPath "../behavior_packs/tcc-jello"
$targetPathBpZip = Join-Path -Path (Get-Location) -ChildPath "../behavior_packs/tcc-jello.zip"
$copyPathBp = Join-Path -Path (Get-Location) -ChildPath "tcc-jello-bp"

if (Test-Path $targetPathBp) {
    Remove-Item -Path $targetPathBp -Force -Recurse
}
if (Test-Path $targetPathBpZip) {
    Remove-Item -Path $targetPathBpZip -Force
}
Copy-Item -Recurse -Path $copyPathBp -Destination $targetPathBp

$targetPathRp = Join-Path -Path (Get-Location) -ChildPath "../resource_packs/tcc-jello"
$targetPathRpZip = Join-Path -Path (Get-Location) -ChildPath "../resource_packs/tcc-jello.zip"
$copyPathRp = Join-Path -Path (Get-Location) -ChildPath "tcc-jello-rp"

if (Test-Path $targetPathRp) {
    Remove-Item -Path $targetPathRp -Force -Recurse
}
if (Test-Path $targetPathRpZip) {
    Remove-Item -Path $targetPathRpZip -Force
}
Copy-Item -Recurse -Path $copyPathRp -Destination $targetPathRp