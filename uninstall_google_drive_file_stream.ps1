# MrNetTek
# eddiejackson.net/blog
# 9/5/2019
# free for public use 
# free to claim as your own

$GDriveFS = Get-ItemProperty 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' | `
Select-Object DisplayName, DisplayVersion, UninstallString, PSChildName | `
Where-Object { $_.DisplayName -match "Google Drive File Stream"}
 
if ($GDriveFS) {
    $DisplayNameString = $GDriveFS.DisplayName
    $DisplayVersion = $GDriveFS.DisplayVersion
    $UninstallString1 = $GDriveFS.PSChildName
    $UninstallString2 = $GDriveFS.UninstallString   
     
    $SilentUninstall1 = "C:\Windows\system32\msiexec.exe /x $UninstallString1" + " /qn /norestart"
    $SilentUninstall2 = """$UninstallString2""" + " --silent --force_stop"  
   
    clear-host
    Write-Host "`nApplication: $DisplayNameString"  
    Write-Host "Version: $DisplayVersion"
    Write-Host "Silent Uninstall1: $SilentUninstall1"
    Write-Host "Silent Uninstall2: $SilentUninstall2`n"
   
    cmd /c $SilentUninstall1
    Start-Sleep 10
    cmd /c $SilentUninstall2
  }
 
[Environment]::Exit(0)
