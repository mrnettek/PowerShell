<#
.SYNOPSIS
     Gets the target domain from the AOR and displays result    
.DESCRIPTION
     Defines an AOR, then uses PowerShell to get domain from AOR.
	 See http://cacorner.blogspot.com/2008/07/microsoft-office-communicator-auto.html
     for the details behind this mini-script.   
.NOTES
    File Name  : Get-DomainFromAOR.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    See blog posting at:
    http://pshscripts.blogspot.com/2008/07/get-domainfromaorps1.html
.EXAMPLE
    PS C:\Foo> .\get-domainfromaor.ps1
    AOR           : sip:tfl@gktrain.net
    Target Domain : gktrain.net
#>

##
# Start of Script
##

# Determine AOR, then get domain
$AOR = "sip:tfl@gktrain.net"
$domain = ($aor.split("@"))[1]

# Display the results
"AOR           : {0}" -f $aor
"Target Domain : {0}" -f $domain