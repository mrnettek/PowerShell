<#
.SYNOPSIS
    This script restarts the DNS Service on a Remote System
.DESCRIPTION
    This script uses WMI to reach out and restart the DNS
    DNS service on a remote machine. in my home environment,
    I find the DNS service on the home DC fails and needs 
    to be restarted - this script works!
.NOTES
    File Name  : Restart-DNS.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\Restart-DNS.ps1
    Restarting DNS Service on: Cookham1
    DNS Service stopped
    DNS Service started

#>
##
# Start Script
##

# Set server to reset and display our intention
$Server = "Cookham1"
"Restarting DNS Service on: $Server"
 
# Get DNS service
$dns = gwmi win32_service -computer $Server  | where {$_.name -eq "DNS"}
 
# Now stop it
$ret = $dns.stopservice()
if ($ret.returnvalue -eq 0) {"DNS Service stopped"}
else {"DNS Service not stopped"}
 
# And now restart it
$ret = $dns.startservice()
if ($ret.returnvalue -eq 0) {"DNS Service started"}
else {"DNS Service not started"}
 
# End of Script