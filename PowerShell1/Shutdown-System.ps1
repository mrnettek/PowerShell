<#
.SYNOPSIS
     This scrips shuts down a system, using the WMI Class
	 Win32_OperatingSystem
.DESCRIPTION
     The script gets the system details from Win32_OpertingSystem
	 then calls shutdown to shut system down.
	 For safety sake, the shutdown is commented out.
.NOTES
    File Name  : Shutdown-System.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://pshscripts.blogspot.com/2008/07/shutdownsystemps1.html
.EXAMPLE
    PSH [C:\foo]: .\Shutdown-System.ps1
    WMI Win32_OS object:

    SystemDirectory : C:\Windows\system32
    Organization    : PS Partnership
    BuildNumber     : 6001
    RegisteredUser  : Thomas Lee
    SerialNumber    : 55041-222-1238786-76622
    Version         : 6.0.6001

    Script does NOT shut system down!
#>

##
# Start of Script
##

# Get the WMI object
$System = Get-WmiObject Win32_OperatingSystem 

# Display it
"WMI Win32_OS object:"
$System 

# Shutdown
# N.B. the next line is deliberately commented out. Be careful!
# running this a Server 2008 LUA results in an exception 
 
#$System.shutdown(2)
"Script does NOT shut system down!"
# End of script