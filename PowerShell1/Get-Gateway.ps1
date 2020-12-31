<#
.SYNOPSIS
    Gets IP default gateway and displays it/them
.DESCRIPTION
    Uses System.Net.Networkinformation.NetworkInterface to get
	Adapters. Then the script looks at them and displays IP gateway(s).
.NOTES
    File Name  : Get-Gateway.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS C:\foo\bin> .\Get-Gateway.ps1'
    Gateway(s):
    NETGEAR FA311v2 PCI Adapter - Virtual Network
      Gateway Address ......................... : 10.10.1.100

    Broadcom NetXtreme Gigabit Ethernet
      Gateway Address ......................... : 10.10.1.100
#>

###
# Start Script
###

# Get Adapters
$adapters  = [System.Net.NetworkInformation.NetworkInterface]::GetAllNetworkInterfaces()

# Display Interface(s) and their Default Gateways
"Gateway(s):"

foreach ($adapter in $adapters) {
    $adapterProperties = $adapter.GetIPProperties()
    $addresses = $adapterProperties.GatewayAddresses
    if ($addresses.Count  -gt 0)  {
           $adapter.Description
           foreach ($address in $addresses)  {
           "  Gateway Address ......................... : {0}" -f $address.Address.ToString()
    }
"" }
}
# End Script