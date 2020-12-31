##############################################################################
##
## Get-WarningsAndErrors.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Demonstrates the functionality of the Write-Warning, Write-Error, and throw
## statements
##
##############################################################################

Write-Warning "Warning: About to generate an error"
Write-Error "Error: You are running this script"
throw "Could not complete operation."