##############################################################################
##
## Search-StartMenu.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/blog)
##
## Search the Start Menu for items that match the provided text. This script
## searches both the name (as displayed on the Start Menu itself,) and the
## destination of the link.
##
## ie:
##
##  PS >Search-StartMenu "Character Map" | Invoke-Item
##  PS >Search-StartMenu "network" | Select-FilteredObject | Invoke-Item
##
##############################################################################

param(
    $pattern = $(throw "Please specify a string to search for.")
    )

## Get the locations of the start menu paths
$myStartMenu = [Environment]::GetFolderPath("StartMenu")
$shell = New-Object -Com WScript.Shell
$allStartMenu = $shell.SpecialFolders.Item("AllUsersStartMenu")

## Escape their search term, so that any regular expression 
## characters don't affect the search
$escapedMatch = [Regex]::Escape($pattern)

## Search for text in the link name
dir $myStartMenu *.lnk -rec | ? { $_.Name -match "$escapedMatch" }
dir $allStartMenu *.lnk -rec | ? { $_.Name -match "$escapedMatch" }

## Search for text in the link destination
dir $myStartMenu *.lnk -rec | 
    Where-Object { $_ | Select-String "\\[^\\]*$escapedMatch\." -Quiet }
dir $allStartMenu *.lnk -rec | 
    Where-Object { $_ | Select-String "\\[^\\]*$escapedMatch\." -Quiet }
