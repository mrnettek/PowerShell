##############################################################################
##
## Test-HotfixInstallation.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Determine if a hotfix is installed on a computer
##
## ie:
##
##  PS >Test-HotfixInstallation KB925228 LEE-DESK
##  True
##
##############################################################################

param(
  $hotfix = $(throw "Please specify a hotfix ID"),
  $computer = "."
  )


## Create the WMI query to determine if the hotfix is installed
$filter = "HotFixID='$hotfix'"
$results = Get-WmiObject Win32_QuickfixEngineering `
    -Filter $filter -Computer $computer

## Return the results as a boolean, which tells us if the hotfix is installed
[bool] $results