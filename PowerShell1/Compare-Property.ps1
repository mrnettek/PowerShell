##############################################################################
##
## Compare-Property.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Compare the property you provide against the input supplied to the script.
## This provides the functionality of simple Where-Object comparisons without
## the syntax required for that cmdlet.
##
## Example:
##    Get-Process | Compare-Property Handles gt 1000
##    dir | Compare-Property PsIsContainer
##############################################################################
param($property, $operator = "eq", $matchText = "$true")

Begin { $expression = "`$_.$property -$operator `"$matchText`"" }
Process { if(Invoke-Expression $expression) { $_ } }