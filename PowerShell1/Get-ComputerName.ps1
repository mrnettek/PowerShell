<#
.SYNOPSIS
    Gets system name using PowerShell and WMI  
.DESCRIPTION
    This script uses the Win32_ComputerSystem class to
	obtain, then dispay, the name of this computer.
	Sample 3 from http://msdn.microsoft.com/en-us/library/aa394586
.NOTES
    File Name  : get-autohelp.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    PowerShell script posted to:
    http://www.pshscripts.blogspot.com
    MSDN script sample at:
	http://msdn.microsoft.com/en-us/library/aa394586
.EXAMPLE
    PSH [C:\foo]: .\Get-Computername.PS1'
    Computer Name is: COOKHAM8
#>

##
# Start of script
##

# 
# Thomas Lee - tfl@psp.co.uk

# Get Computer info
$Computer = Get-WmiObject -Class Win32_ComputerSystem

# Print Computer Name
"Computer Name is: {0}" -f $Computer.Name
# End of script