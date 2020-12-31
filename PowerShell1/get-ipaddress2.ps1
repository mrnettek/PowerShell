<#
.SYNOPSIS
    Thsis script parses using tryparse to parse an IP address string
.DESCRIPTION
    Thsi script creates three IP address strings and uses tryparse
	to check them out. This script works with PS v1.
.NOTES
    File Name  : Get-IPAddress2.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\get-ipaddress2.PS1
    Testing: "10.1.1.100"
    "10.1.1.100"    is a valid IP address
    Testing: "10.1"
    "10.0.0.1"      is a valid IP address
    Testing: "fooey"
    "fooey"         is NOT a valid IP address
#>

##
# Start of Script
##

# create strings
$strings = "10.1.1.100", "10.1", "fooey"

# Try and parse
foreach( $string in $strings){
"Testing: `"{0}`"" -f $string

# creeate an IP address for the call to parse 
$x = [int64] 0
$ip1= new-object system.net.IPAddress $x

# Now try to parse the address
$address = [System.Net.IPAddress]::tryparse($string,[ref] $ip1)
if ($address ){
  "`"{0}`" `tis a valid IP address" -f [System.Net.IPAddress]::parse($string)
}  
else {
  "`"{0}`" `tis NOT a valid IP address" -f $string
}
}
# End of Script