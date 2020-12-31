<#
.SYNOPSIS
    This script shows the DNS Configuration  of NICs 
    in your system
.DESCRIPTION
    This script is a re-write of an MSDN Sample 
    using PowerShell./ The script gets all network
    active network interfaces then prints out that
    interfaces' DNS Properties.
.NOTES
    File Name  : Show-DnsConfiguration.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
         http://msdn.microsoft.com/en-us/library/system.net.networkinformation.networkinterface.getallnetworkinterfaces.aspx   
.EXAMPLE
    Psh[C:\foo]> .\Show-DnsConfiguration.ps1
    Broadcom NetXtreme 57xx Gigabit Controller
      DNS suffix .............................. : cookham.net
      DNS enabled ............................. : False
      Dynamically configured DNS .............. : True

    ... more interfaces snipped for brevity!    
#>

# Get the adapters than iterate over the collection and display DNS configuration
$adapters = [System.Net.NetworkInformation.NetworkInterface]::GetAllNetworkInterfaces()
ForEach ($adapter in $adapters)   {
  $properties = $adapter.GetIPProperties()
  $adapter.Description
  "  DNS suffix .............................. : {0}" -f $properties.DnsSuffix
  "  DNS enabled ............................. : {0}" -f $properties.IsDnsEnabled
  "  Dynamically configured DNS .............. : {0}" -f $properties.IsDynamicDnsEnabled
}