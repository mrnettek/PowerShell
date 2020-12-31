<#
.SYNOPSIS
    Gets country for a Geo-IP address
.DESCRIPTION
    This function uses the New-WebServiceProxy cmdlet to
	create a web service proxy. Then it calls that proxy
	to get the country for a given IP address. After the
	function definition are two examples!
.NOTES
    File Name  : Get-CountryForIPAddress.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
   Script posted:
   http://www.pshscripts.blogspot.com
.INPUTTYPE
   String representing IP Adress
.RETURNVALUE
   XML Element, holding details of the country
.EXAMPLE
    Run from PowerShell Prompt:
	Looking up: 131.107.2.200
    Country: UNITED STATES (US)
.EXAMPLE
    Run from Pipeline:
	"16.0.0.1","200.200.200.1" | Get-CountryForIPAddress
    Looking up: 16.0.0.1
    Country: UNITED STATES (US)
    Looking up: 200.200.200.1
    Country: BRAZIL (BR)
.PARAMETER IPAddress
    A string, or array of strings representing IP Addresses
	The function gets country details for each IPAddress provided
#>

function Get-CountryForIPAddress {
param(
[Parameter(Position=0, Mandatory=$FALSE, ValueFromPipeline=$TRUE)] 
[String] $IPAddress="131.107.2.200" )
process {
   "Looking up: {0}" -f $IPAddress
   $s = new-webserviceproxy -uri http://www.webservicex.net/geoipservice.asmx
   foreach ($addr in $IPAddress) {
      $result = $s.GetGeoIP($addr)
	  "Country: {0} ({1})" -f $result.countryname, $result.countrycode
	} # end foreach
} #end process block
} # end function


"Example 1:"
"=========="
Get-CountryForIPAddress "131.107.2.200"

"Example 2:"
"=========="
"16.0.0.1","200.200.200.1" | Get-CountryForIPAddress
# End of Script