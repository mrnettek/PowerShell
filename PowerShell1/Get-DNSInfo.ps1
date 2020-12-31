<#
.SYNOPSIS
    This script re-implements a MSDN Sample in PowerShell that
   shows the use of System.Net.NetworkInformation.NetworkInterface
.DESCRIPTION
    This script gets network information and formats DNS info. The
    script is effectively a one-liner!
.NOTES
    File Name  : Get-DNSInfo.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.net.networkinformation.networkinterface.getallnetworkinterfaces.aspx
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.Net.NetworkInformation\Get-DNSInfo.ps1'

    DnsSuffix   IsDnsEnabled IsDynamicDnsEnabled
    ---------   ------------ -------------------
    cookham.net        False                True
    cookham.net        False                True
                       False                True
    cookham.net        False                True
#>
 
##
# Start of script
##

#Get information and print - do this as a 1-liner!
[System.Net.Networkinformation.NetworkInterface]::GetAllNetworkInterfaces() | %{$_.getipproperties()} | ft dnssuffix,isdnsenabled,isdynamicDNSenabled -a
# End of script
