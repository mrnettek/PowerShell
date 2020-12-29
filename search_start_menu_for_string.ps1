# MrNetTek
# eddiejackson.net/blog
# 10/18/2020
# free for public use
# free to claim as your own
 
Clear-Host
 
# What to search for
$Search = "Microsoft"
    
$oShell = New-Object -Com WScript.Shell
 
# Return Menu Paths
$UserStartMenu = [Environment]::GetFolderPath("StartMenu")
$AllUsers = $oShell.SpecialFolders.Item("AllUsersStartMenu")
 
# Parse Search for RegEx
$eMatch = [Regex]::Escape($Search)
 
# Search for pattern
dir $UserStartMenu *.lnk -rec | ? { $_.Name -match "$eMatch" }
dir $AllUsers *.lnk -rec | ? { $_.Name -match "$eMatch" }
dir $UserStartMenu *.lnk -rec | 
    Where-Object { $_ | Select-String "\\[^\\]*$eMatch\." -Quiet }
dir $AllUsers *.lnk -rec | 
    Where-Object { $_ | Select-String "\\[^\\]*$eMatch\." -Quiet }
 
Write-Host "`nDone!"