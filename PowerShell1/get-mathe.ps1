<#
.SYNOPSIS
    Illustrates the expponential
.DESCRIPTION
    This scritp uses system.math's E field
.NOTES
    File Name  : get-mathe.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: . \get-mathe.ps1'
    The Value of E is 2.71828182845905
#>

##
# Start of Script
##
 
# get the value
$e = [math]::e
 
# print it out
"The Value of E is {0}" -f $e
# End of Script