<#
.SYNOPSIS
    This script uses the System.Net.Networkinginformation.Networknterface class
    to get all network interface detais and displays the DNS addresses configured.
.DESCRIPTION
    This script first gets all the interface objects, then iterates throught them to 
    get the DNS address(es) configured for each one.
.NOTES
    File Name  : Get-DNSAddress.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.net.networkinformation.ipaddressinformation(VS.85).aspx
.EXAMPLE
    PSH [C:\foo]: . 'C:\Users\tfl\AppData\Local\Temp\Untitled11.ps1'
    NETGEAR FA311v2 PCI Adapter - Virtual Network
      DNS Servers ............................. : 10.10.1.101
    Broadcom NetXtreme Gigabit Ethernet
      DNS Servers ............................. : 10.10.1.101
    Software Loopback Interface 1
      DNS Servers ............................. : fec0:0:0:ffff::1%1
      DNS Servers ............................. : fec0:0:0:ffff::2%1
      DNS Servers ............................. : fec0:0:0:ffff::3%1
    isatap.cookham.net
      DNS Servers ............................. : 10.10.1.101
#>
 
##
# Start of Script
##
 
# Get set of adapters
$adapters  = [System.Net.NetworkInformation.NetworkInterface]::GetAllNetworkInterfaces()

# For each adapter, print out DNS Server Addresses configured
foreach ($adapter in $adapters) {
  $AdapterProperties = $Adapter.GetIPProperties()
  $dnsServers        = $AdapterProperties.DnsAddresses
  if ($dnsServers.Count -gt 0){
    $adapter.Description
    foreach ($IPAddress in $dnsServers) {
        "  DNS Servers ............................. : {0}" -f $ipaddress.IPAddressToString
            }
    }
}	
# End of Script