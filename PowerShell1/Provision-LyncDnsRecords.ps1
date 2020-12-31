<#
.SYNOPSIS
    This script creates the DNS entries needed for a Lync 2010 SE deployment.
.DESCRIPTION
    This script creates a couple of wrapper functions to create DNS A and SRV records, then
    calls those functions to create the needed A and SRV records for a simple
    Lync 2010 SE deployment.
.NOTES
    File Name  : Provision-LyncDnsRecords.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    
#>
function Get-DnsARecord {
Get-WmiObject -ComputerName DC1 -Namespace 'root\MicrosoftDNS' -class MicrosoftDNS_AType  -filter "ContainerName ='reskit.org'" | ft ownername, ipaddress -AutoSize 
}
Set-Alias gda get-DNSARecord
 
function New-DnsARecord {
param (
$zone = "reskit.org",
$name = "Testxxx.reskit.org",
$address = "131.107.2.200", 
$server = "dc1.reskit.org",
$class = 1,
$ttl = 3600
)
# Get class, and create the A record
$rec = [WmiClass]"\\DC1\root\MicrosoftDNS:MicrosoftDNS_AType"
$result = $rec.CreateInstanceFromPropertydata($server, $zone, $name, $class, $ttl, $address)
 } 
  
function Get-DnsSrvRecord {
Get-WmiObject -ComputerName DC1 -Namespace 'root\MicrosoftDNS' -class MicrosoftDNS_SrvType  -filter "ContainerName ='reskit.org'" | 
   ft ownername,port,srvdomainname -AutoSize
}
Set-Alias gds get-DNSsrvRecord

function New-DnsSrvRecord {
param (
$zone = "reskit.org",
$name = "SRVFake.reskit.org",
$target = "se.reskit.org",
$port   = 9999,
$priority = 0,
$weight = 0,
$server = "dc1.reskit.org",
$class = 1,
$ttl = 3600
)
# Get class and create SRV record
$rec = [WmiClass]"\\DC1\root\MicrosoftDNS:MicrosoftDNS_SRVType"
$result = $rec.CreateInstanceFromPropertydata($server, $zone, $name, $class, $ttl, $priority, $weight, $port, $target)
}

# Create the needed records for Lync Server 2010 RC

# The machines
# DC - Domain Controller, CA, IIS
New-DNSARecord reskit.org dc1.reskit.org        10.100.100.25
# SE - SE Server
New-DNSARecord reskit.org dc1.reskit.org        10.100.100.20
# Monitoring Server
New-DNSARecord reskit.org monitor.reskit.org    10.100.100.210
# Archive Server
New-DNSARecord reskit.org archive.reskit.org    10.100.100.220
# Reverse Proxy - Inside edge
New-DNSARecord reskit.org proxy.reskit.org      10.100.100.200
# Edge Consolidated - Inside edge
New-DNSARecord reskit.org edge.reskit.org       10.100.100.201

# Services
# Dialin URL
New-DNSARecord reskit.org dialin.reskit.org     10.100.100.20
# Meeting URL
New-DNSARecord reskit.org meet.reskit.org       10.100.100.20
# Administration URL
New-DNSARecord reskit.org admin.reskit.org      10.100.100.20
# Web Services external URL
New-DNSARecord reskit.org external.reskit.org   10.100.100.200
New-DNSARecord reskit.org external1.reskit.org  10.100.100.200

# Client Autodiscover SRV
New-DnsSrvRecord reskit.org _SipInternalTls._tcp.reskit.org se.reskit.org 5061 

# Display A records
gda 

# Display Srv Records
gds 