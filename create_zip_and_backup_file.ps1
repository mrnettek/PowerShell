# MrNetTek
# eddiejackson.net
# 5/16/2021
# free for public use
# free to claim as your own
 
# Load assembly
Add-Type -assembly "system.io.compression.filesystem"
 
# Variables
$zipSource = "C:\PowerShell\Files"
$zipPath = "C:\PowerShell"
$zipName = "files.zip"
$zipDestination = "C:\PowerShell\Backup"
 
# Join archive path
$ArchiveFile = Join-Path -Path $zipPath -ChildPath $zipName
 
# Compress files
[io.compression.zipfile]::CreateFromDirectory($zipSource, $ArchiveFile)
 
# Copy to backup
Copy-Item -Path $ArchiveFile -Destination $zipDestination -Force
 
# Clear session
# Delete temp
If(Test-Path $ArchiveFile) {Remove-Item $ArchiveFile}
