<#
.SYNOPSIS
    Gets and empty GUID
.DESCRIPTION
    This script creates and displays an empty GUID, using the EMPTY field
.NOTES
    File Name  : get-autohelp.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\Get-EmptyGuid.ps1
    The Empty guid: 00000000-0000-0000-0000-000000000000
#>

##
# Start of Script
##

# Create an empty GUID
$g = [system.guid]::empty

# Display the empty guid
"The Empty guid: {0}" -f $g
# End of script