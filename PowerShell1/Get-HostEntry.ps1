<#
.SYNOPSIS
    Demonstrates use of the GetHostEntry method of System.Net.DNS Class
.DESCRIPTION
    This script is a an MSDN sample, using PowerShell
.NOTES
    File Name  : Get-HostEntry.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Sample posted to:
	http://pshscripts.blogspot.com/2009/04/get-hostentryps1.html
	Original MSDN sample at:
	http://msdn.microsoft.com/en-us/library/system.net.dns.gethostentry.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-HostEntry.ps1 Cookham8
    Host Name    : Cookham8.cookham.net
    Alias        :
    Address      : fe80::d8ed:afe2:2a97:a596%14
    Address      : fe80::3953:f67b:2f1c:1323%10
    Address      : 10.10.1.120
    Address      : 10.10.1.115
.PARAM HostName
    The name of the host to search for - the default is "localhost"
#>

param (
[string] $HostName = "localhost"
)

###
# Start of Script
###
 
#Get Host details

$hostentrydetails = [System.Net.Dns]::GetHostEntry($hostname)

# Print details:
"Host Name    : {0}" -f $hostentrydetails.HostName
foreach ($alias in $hostentrydetails.alises) {
"Alias        : {0}" -f $alias
}
foreach ($addr in $hostentrydetails.addresslist) {
"Address      : {0}" -f $Addr.ipaddresstostring
}
 
# End of script