# MrNetTek
# eddiejackson.net/blog
# 9/17/2020
# free for public use
# free to claim as your own
 
Clear-Host
md c:\\HWID
Set-Location c:\\HWID
$filename = (gwmi win32_bios).SerialNumber
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted
Install-Script -Name Get-WindowsAutoPilotInfo -Force
Get-WindowsAutoPilotInfo.ps1 -OutputFile "C:\HWID\$filename.csv"
notepad "C:\HWID\$filename.csv"