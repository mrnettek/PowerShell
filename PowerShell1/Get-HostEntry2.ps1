<#
.SYNOPSIS
    Demonstrates use of the GetHostEntry method of System.Net.DNS Class
.DESCRIPTION
    This script is a an MSDN sample, using PowerShell. This script
    uses the IP address of the host to find.
.NOTES
    File Name  : Get-HostEntry2.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2
.LINK
    Sample posted to:
	    http://pshscripts.blogspot.com/
	Original MSDN sample at:
	    http://msdn.microsoft.com/en-us/library/ms143997.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-HostEntry2.ps1 10.10.1.117
    Host Name    : cookham11.cookham.net
    Alias        :
    Address      : 10.10.1.117
.PARAM HostName
    The name of the host to search for - the default is "127.0.0.1"
#>

param (
[string] $HostAddress = "127.0.0.1"
)

###
# Start of Script
###
 
# Convert $hostaddres to IPaddress class. 

# Create one for next call
$HostIp = [System.Net.IPAddress]::Parse("127.0.0.1")
if (! ([system.Net.IPAddress]::TryParse($hostaddress, [ref] $HostIP))) {"Not valid IP address"; return}
 
# Get Host info
$hostentrydetails = [System.Net.Dns]::GetHostEntry($HostIP)

# Print details:
"Host Name    : {0}" -f $hostentrydetails.HostName
foreach ($alias in $hostentrydetails.alises) {
"Alias        : {0}" -f $alias
}
foreach ($addr in $hostentrydetails.addresslist) {
"Address      : {0}" -f $Addr.ipaddresstostring
}
 
# End of script