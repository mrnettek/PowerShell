<#
.SYNOPSIS
    Gets free memory from WMI  
.DESCRIPTION
    This scritp uses Win32_ComputerSystem WMI class
	to get then display free memory. This PowerShell
	script is a re-write of a an MSDN sample.
.NOTES
    File Name  : Get-FreeMemory.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
	MSDN Script at:
	http://msdn.microsoft.com/en-us/library/aa394587
.EXAMPLE
    PSH [C:\foo]: .\Get-FreeMemory.ps1'
    This system has 8188.7421875 MB Free Memory
#>

##
# Start of script
##

# Get memory
$mem = Get-WmiObject -Class Win32_ComputerSystem

# Display memory
"This system has {0} MB Free Memory" -f $($mem.TotalPhysicalMemory/1mb)
# End script