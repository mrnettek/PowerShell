<#
.SYNOPSIS
    This script displays the platform id of the system
.DESCRIPTION
    This script is a rewrite of an MSDN sample. It 
    gets System.Environment.Version's Platform field
    and displays it. The sample is simplifed from
    the C# version! Not tested except on Server 2008.
.NOTES
    File Name  : Get-PlatformId.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2009/09/get-platformidps1.html
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/3a8hyw88.aspx
.EXAMPLE
    PSH [C:\foo]: .Get-PlatformID.ps1'
    Platform ID: Win32NT
#>

##
# Start of Script
##

#Get OS Version from System.Environment
$OS  =  [System.Environment]::OSVersion

# Get and display the PlatformID
$Platformid =  $OS.Platform;
"Platform ID: {0}" -f $Platformid
# End of script