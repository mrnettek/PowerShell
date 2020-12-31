<#
.SYNOPSIS
    Displays the logged on user(s)    
.DESCRIPTION
    This script uses Win32_ComputerSystem to get and then 
	display the logged on user
.NOTES
    File Name  : Get-LoggedOnUser.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    PowerShell script posted to: 
    http://www.pshscripts.blogspot.com
	MSDN Sample at:
    http://msdn.microsoft.com/en-us/library/aa394586
.EXAMPLE
    PSH [C:\foo]: .\Get-LoggedOnUser.ps1'
    Logged on user(s):
    User: COOKHAM\tfl
#>
# 

##
# Start of Script
##

# Get details of this computer
$computers = Get-WmiObject -Class Win32_ComputerSystem

# Get Logged on User(s)
"Logged on user(s):"
foreach($computer in $computers) {
"User: {0}" -f $computer.UserName
}
# End of script