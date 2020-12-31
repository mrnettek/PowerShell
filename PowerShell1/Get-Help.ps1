<#
.SYNOPSIS
    Opens Windows Help using shell.application
.DESCRIPTION
    This script creates a shell object then opens help from the shell.    
.NOTES
    File Name  : get-help.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    This script opens the Windows Help and Support centre in Vista and later.
	There is no PowerShell output as such to record here.
#>

##
# Start of script
##

# First get shell object
$Shell = new-object -com Shell.Application
 
# Now get help
$shell.help()
# End Script