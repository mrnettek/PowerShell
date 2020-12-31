<#
.SYNOPSIS
    This script checks whether a parameter is an IPv6 or IPv4 Loopback Address 
.DESCRIPTION
    This script checks to see if the passsed string is a loopback address and if so,
	displays details.
.NOTES
    File Name  : Get-LoopBack.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN sample posted to:
	    http://msdn.microsoft.com/en-us/library/system.net.ipaddress.isloopback.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-LoopBack.ps1
    Your input address: \127.0.0.1\ is an IPv4 loopback address whose internal format is: 127.0.0.1.
.EXAMPLE
    PSH [C:\foo]: .\Get-LoopBack.ps1 ::1
    Your input address: \::1\ is an IPv6 loopback address whose internal format is: ::1.
.EXAMPLE
    PSH [C:\foo]: .\Get-LoopBack.ps1 131.107.2.200
    Your input address: \131.107.2.200\ is not a loopback address.
.PARAM
    $IPAddress - Address to look up to see if it's Loopback
#>
param (
[String] $IpAddress = "127.0.0.1"
) 
# Setup Default answer!
$loopBack=" is not a loopback address.";

# Perform syntax check by parsing the address string entered by the user.
$Address = [System.Net.IPAddress]::Parse($IpAddress);

# Perform semantic check by verifying that the address is a valid IPv4 
# or IPv6 loopback address. 
if([System.Net.IPAddress]::IsLoopback($Address) -and ($address.AddressFamily -eq [System.Net.Sockets.AddressFamily]::InterNetworkV6) ) {
        $loopBack =  " is an IPv6 loopback address " +
                    "whose internal format is: " + $Address.ToString() + ".";
}					
else {
    if([System.Net.IpAddress]::IsLoopback($Address) -and ($address.AddressFamily -eq [System.Net.Sockets.AddressFamily]::Internetwork)) {
        $loopBack = " is an IPv4 loopback address " +
                     "whose internal format is: " + $Address.ToString() + ".";
    }
}

# Display the results.
"Your input address: " + "\" + $ipAddress + "\" + $loopBack