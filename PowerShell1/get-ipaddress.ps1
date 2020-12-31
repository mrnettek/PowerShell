<#
.SYNOPSIS
    Gets and displays the IP address of a computer
.DESCRIPTION
    This script uses Win32_NetworkAdapterConfiguration to
	obtain, then display, a system's IP addresses.
	NB: this only works on XP or later versions of Windows.
.NOTES
    File Name : Get-IPAddress.ps1
    Author : Thomas Lee - tfl@psp.co.uk
    Requires : PowerShell V2 CTP3
.LINK
    Script postesd to:
    http://www.pshscripts.blogspot.com
    MSDN Sample at:
    http://msdn.microsoft.com/en-us/library/aa394590(VS.85).aspx
.EXAMPLE
    [ps] c:\foo> .\Get-IPAddress.ps1
	IP Address   : 10.10.1.115
    IP Address   : fe80::3953:f67b:2f1c:1323
    IP Address   : 10.10.1.120
    IP Address   : fe80::d8ed:afe2:2a97:a596
    4 IP addresses found on this system	
#>

###
# Start of Script
##

# Get Networking Adapter Configuration
$Computer = "."
$IPconfigset = Get-WmiObject Win32_NetworkAdapterConfiguration

# Iterate and get IP address
$count = 0
foreach ($IPConfig in $IPConfigSet) {
   if ($Ipconfig.IPaddress) {
      foreach ($addr in $Ipconfig.Ipaddress) {
	  "IP Address   : {0}" -f  $addr;
	  $count++ 
	  }
   }
}
if ($count -eq 0) {"No IP addresses found"}
else {"$Count IP addresses found on this system"}
#End of Script