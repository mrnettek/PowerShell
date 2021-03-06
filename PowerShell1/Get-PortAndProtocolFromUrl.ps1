<#
.SYNOPSIS
    This script strips out a port and protocol number from a URL 
.DESCRIPTION
    This script creates a regular expression reged then uses it to 
    match against the URL to get the protocol and port. This is a
    re-write of the MSDN sample.
.NOTES
    File Name  : Get-PortAndProtocolFromUrl.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/63ew9az0.aspx
.EXAMPLE
    PowerShell> .\Get-PortAndProtocolFromUrl.ps1
    Port    : http
    Protocol: 8080   
#>

# Set URL
$url = "http://www.contoso.com:8080/letters/readme.html"

# Create Regex, then match against the URL
$r = new-object System.Text.RegularExpressions.Regex "^(?<proto>\w+)://[^/]+?:(?<port>\d+)?/"
$m = $r.Match($url)

# Print results
if ($m.Success) {
   "Port    : {0}" -f $M.groups["proto"].value
   "Protocol: {0}" -f $M.groups["port"].value
}
          