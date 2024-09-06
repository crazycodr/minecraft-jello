# Define the file and directories
$filePath = Join-Path -Path (Get-Location) -ChildPath "tcc-jello.mcaddon"
$bpDirectory = Join-Path -Path (Get-Location) -ChildPath "tcc-jello-bp"
$rpDirectory = Join-Path -Path (Get-Location) -ChildPath "tcc-jello-rp"
$zipFilePath = Join-Path -Path (Get-Location) -ChildPath "tcc-jello.zip"

# Delete the file if it exists
if (Test-Path $filePath) {
    Write-Output "Deleting existing file: $filePath"
    Remove-Item -Path $filePath -Force
} else {
    Write-Output "No file found to delete: $filePath"
}

# Zip the directories
Write-Output "Creating ZIP file: $zipFilePath"

# Create a temporary folder to hold the directories
$tempFolder = Join-Path -Path $env:TEMP -ChildPath "tcc-jello-temp"
if (Test-Path $tempFolder) {
    Remove-Item -Path $tempFolder -Recurse -Force
}
New-Item -Path $tempFolder -ItemType Directory

# Copy directories to the temporary folder
Copy-Item -Path $bpDirectory -Destination $tempFolder -Recurse
Copy-Item -Path $rpDirectory -Destination $tempFolder -Recurse

# Compress the temporary folder into a ZIP file
Compress-Archive -Path $tempFolder\* -DestinationPath $zipFilePath

# Clean up temporary folder
Remove-Item -Path $tempFolder -Recurse -Force

Rename-Item -Path $zipFilePath -NewName tcc-jello.mcaddon

Write-Output "ZIP file created successfully: $zipFilePath"