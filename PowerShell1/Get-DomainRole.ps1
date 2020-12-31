<#
.SYNOPSIS
    Gets and displays the role a computer plays in a domain
.DESCRIPTION
    This script uses WIN32_ComputerSystem to get the rold of a
	system then displays it. This is a re-write of an MSDN sample.
.NOTES
    File Name  : get-autohelp.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    PowerShell Script posted to:
    http://www.pshscripts.blogspot.com
	MSDN sample at:
	http://msdn.microsoft.com/en-us/library/aa394586
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\WMI\Get-DomainRole.PS1
    Computer "COOKHAM8.cookham.net" is a:
    Member Server
#>

##
# Start of Script
##

# Get Computer info
$Computer = Get-WmiObject -Class Win32_ComputerSystem

# Print Role:
"Computer `"{0}.{1}`" is a: " -f $Computer.Name,$computer.domain
switch ($computer.DomainRole) {
0 {"Standalone Workstation"}
1 {"Member Workstation"}
2 {"Standalone Server"}
3 {"Member Server"}
4 {"Backup Domain Controller"}
5 {"Primary Domain Controller"}
}
#End of script