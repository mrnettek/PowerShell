<#
.SYNOPSIS
    Gets system name and domain
.DESCRIPTION
    This script uses Win32_Computer System to obtain and dislay
	the host and domain name of the local host. This is a re-write
	of an MSDN sample using POwerShell
.NOTES
    File Name  : get-systemstatus.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Powershell script posted to:
	http://www.pshscripts.blogspot.com
    MSDN script at:
	http://msdn.microsoft.com/en-us/library/aa394586
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\WMI\Get-SystemStatus.PS1
    System Name: COOKHAM8
    Domain     : cookham.net
#>

##
# Start of Script
##

# Get details of this computer
$computer = Get-WmiObject -Class Win32_ComputerSystem

# Display details

"System Name: {0}" -f $computer.name
"Domain     : {0}" -f $computer.domain
# End of script