<#
.SYNOPSIS
    Uses Win32_ComputerSystem to determin the domain this computer is in
.DESCRIPTION
    This script is a re-write of an MSDN sample (sample three three 
    from  http://msdn.microsoft.com/en-us/library/aa394586) that uses
	win32_computer name to determine the domain.
.NOTES
    File Name  : Get-Domain.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
	MSDN Sample at:
	http://msdn.microsoft.com/en-us/library/aa394586
.EXAMPLE
    PSH [C:\foo]: .\Get-Domain.PS1'
    System Name: COOKHAM8
    Domain     : cookham.net
#>

##
# Start of script
##

# Get details of this computer
$computer = Get-WmiObject -Class Win32_ComputerSystem

# Display details
"System Name: {0}" -f $computer.name
"Domain     : {0}" -f $computer.domain
# End of script