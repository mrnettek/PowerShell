<#
.SYNOPSIS
    Obtains and displays a system's physical RAM
.DESCRIPTION
    This script uses Win32_ComputerSystem to obtain
	then display the physical ram memory in a system.
.NOTES
    File Name  : Get-PhysicalRam.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    PowerShell sample posted to:
    http://www.pshscripts.blogspot.com
	MSDN Sample at:
    Http://msdn.microsoft.com/en-us/library/aa394587
.EXAMPLE
    PSH [C:\foo]: .\Get-PhysicalRam.PS1
    This system has 8188.7421875 MB Free Memory
#>

##
# Start of Script
##

# Get system details
$mem = Get-WmiObject -Class Win32_ComputerSystem

# Display memory
"This system has {0} MB Free Memory" -f $($mem.TotalPhysicalMemory/1mb)
# End of script