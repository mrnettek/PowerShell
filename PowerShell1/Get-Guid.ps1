<#
.SYNOPSIS
    Creates a new guid
.DESCRIPTION
    This script used sytem.guid to create a new guiod
.NOTES
    File Name  : get-autohelp.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\Get-Guid.ps1
    The GUID is: 83c6818b-0706-4983-b3c0-36c3ca7a1ce1
#>
 
##
# Start of Script
##

# Create a new GUID
$g = [system.guid]::newguid()

# Display the new guid
"The GUID is: {0}" -f $g
# End of script