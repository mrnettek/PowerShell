<#
.SYNOPSIS
    This script, shows details about the Network Interfaces
    on a system. This is a re-write of an MSDN script into
    PowerShell
.DESCRIPTION
    This script Uses several .NET classes to get the details
    of the interfaces on the system, then displays these details.
    Note in the MSDN Script, there were calls to other MSDN Samples. 
    To make things simple, I have removed these calls. 
.NOTES
    File Name  : Show-NetworkInterfaces.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
         http://   
.EXAMPLE

    Psh[C:\foo]> .\Show-NetworkInterfaces.ps1
    Interface information for Cookham8.cookham.net
      Number of interfaces .................... : 2

    Broadcom NetXtreme 57xx Gigabit Controller
    ==========================================
      Interface type .......................... : Ethernet
      Physical Address ........................ : 001E4F955CC4
      Operational status ...................... : Up
      IP version .............................. : IPv4, IPv6
      DNS suffix .............................. : cookham.net
      MTU...................................... : 1500
      WINS Servers ............................ :
      10.10.1.101
      DNS enabled ............................. : False
      Dynamically configured DNS .............. : True
      Receive Only ............................ : False
      Multicast ............................... : True

    Microsoft ISATAP Adapter
    ========================
      Interface type .......................... : Tunnel
      Physical Address ........................ : 00000000000000E0
      Operational status ...................... : Down
      IP version .............................. : IPv4, IPv6
      DNS suffix .............................. : cookham.net
      MTU...................................... : 
      DNS enabled ............................. : False
      Dynamically configured DNS .............. : True
      Receive Only ............................ : False
      Multicast ............................... : False
      
#>

# First, get network properties of, and the nics in, this system
$computerProperties = [System.Net.NetworkInformation.IPGlobalProperties]::GetIPGlobalProperties()
$nics =               [System.Net.NetworkInformation.NetworkInterface]::GetAllNetworkInterfaces()

"Interface information for {0}.{1}" -f $computerProperties.HostName, $computerProperties.DomainName

# Do we have nics??
If (!$nics -or $nics.Length -lt 1)
    {
        "  No network interfaces found."
        return
    }

# Show interface details
"  Number of interfaces .................... : {0}" -f $nics.Length
ForEach ($adapter in $nics)
    {
        $properties = $adapter.GetIPProperties()
        ""
        $adapter.Description
        "=" * $adapter.Description.Length
        "  Interface type .......................... : {0}" -f $adapter.NetworkInterfaceType
        "  Physical Address ........................ : {0}" -f $adapter.GetPhysicalAddress().ToString()
        "  Operational status ...................... : {0}" -f $adapter.OperationalStatus
    # Create a display string for the supported IP versions.
       $versions =""
        if ($adapter.Supports([System.Net.NetworkInformation.NetworkInterfaceComponent]::IPV4 ))
        {
             $versions = "IPv4"
         }
        if ($adapter.Supports([System.Net.NetworkInformation.NetworkInterfaceComponent]::IPv6))
        {
            if ($versions.Length -gt 0)
            {
               $versions += ", ";
             }
            $versions += "IPv6";
        }
        "  IP version .............................. : {0}" -f $versions

# The remaining information is not useful for loopback adapters.
 if ($adapter.NetworkInterfaceType -eq [System.Net.NetworkInformation.NetworkInterfaceType]::Loopback)
            continue
        }
 "  DNS suffix .............................. : {0}" -f $properties.DnsSuffix
        if ($adapter.Supports([System.Net.NetworkInformation.NetworkInterfaceComponent]::IPv4))
        {
            $ipv4 = $properties.GetIPv4Properties()
            "  MTU...................................... : {0}" -f $ipv4.Mtu
            if ($ipv4.UsesWins)
            {

                $winsServers = $properties.WinsServersAddresses
                if ($winsServers.Count -gt 0)
                {
                    "  WINS Servers ............................ :";
                    foreach ($Winserver in $winsServers) {
                    "  {0}" -f $Winserver.IpAddressToString
                    }
                }
            }
        }

        "  DNS enabled ............................. : {0}" -f $properties.IsDnsEnabled
        "  Dynamically configured DNS .............. : {0}" -f $properties.IsDynamicDnsEnabled
        "  Receive Only ............................ : {0}" -f $adapter.IsReceiveOnly
        "  Multicast ............................... : {0}" -f $adapter.SupportsMulticast
 }  # End Foreach
