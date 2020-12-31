<#
.SYNOPSIS
    This script gets the reverse lookup zone from a DNS Server and
    displays all the systems registered
.DESCRIPTION
    This script first gets the reverse lookup zone from a DNS Server (i.e.
    all the computers that have used the DNS server to register!). The
    script then displays the FQDN, IP Address and Timestamp.
.NOTES
    File Name  : Get-DnsRegisteredServers.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    This script posted to TechNet Scripting Gallery
        http://gallery.technet.microsoft.com/ScriptCenter/en-us/28e8b98e-565b-40be-ba2c-1134341bb555	
.EXAMPLE
    PSH [C:\foo]: .Get-DnsRegisteredNames.ps1
    Computers reverse registered on DNS Server: Cookham1
    10.10.1.42      superman.cookham.net.                     3590550
    10.10.1.105     batman.cookham.net.                       3582112
    10.10.1.109     jeeves.cookham.net.                       3586452
    10.10.1.111     supergirl.cookham.net.                    3590550
    10.10.1.114     future.cookham.net.                       3589209
    10.10.1.131     bladerunner.cookham.net.                  3587817
    10.10.1.142     wonderwoman.kapoho.net.                   3590551
#>

$dns = "Cookham1" 
$records = get-wmiobject -class MicrosoftDNS_PTRType -namespace root\MicrosoftDNS -computer $dns 

"Computers reverse registered on DNS Server: $DNS"

# Loop through and display results
foreach ($record in $records) {

# Get owner name and ip address string
$on = $record.ownerName.split(".")
$ownerip = $on[3] + "." + $on[2] + "." + $on[1] + "." + $on[0]

# Display details
"{0, -15} {1,-40}  {2,-10} " -f $ownerip, $record.ptrdomainname, $record.timestamp
}