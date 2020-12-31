<#
.SYNOPSIS
    Disables active network cards
.DESCRIPTION
    This script looks at each network card that is currently IP enabled, and
	disables it by releasing the DHCP Lease. To re-enable the network interrace,
	you just run IPCONFIG /RENEW.
	
	This script is an MSDN Sample, rewritten using PowerShell
.NOTES
    File Name  : Disable-NetworkCard.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    PowerSHell script posted to:
        http://www.pshscripts.blogspot.com
	Original MSDN Sample at:
	    http://msdn.microsoft.com/en-us/library/aa394595(VS.85).aspx
.EXAMPLE
    PSH [C:\foo]: .\Disable-NetworkCard.ps1'
    Releasing lease on: [00000006] Broadcom NetXtreme Gigabit Ethernet
    Releasing lease on: [00000012] Microsoft Virtual Network switch Adapte
#>
  
###
#  Starting Script
###

$Computer = "."
$net = Get-WMIObject -class Win32_NetworkAdapterConfiguration -ComputerName $computer
$netenabled = $net | where {$_.IPenabled}
foreach ($NetCard in $netenabled) {
    "Releasing lease on: {0}" -f $netcard.caption
	$netcard.ReleaseDHCPLease()
}
# End of Script