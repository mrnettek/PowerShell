##############################################################################
##
## Map-Object.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Apply the given mapping command to each element of the input. (Note that
## PowerShell includes this command natively, and calls it Foreach-Object)
##
## Example:
##    1,2,3 | Map-Object { $_ * 2 }
##############################################################################
param([ScriptBlock] $mapCommand)
 
process
{
    & $mapCommand
}