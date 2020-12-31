<#
.SYNOPSIS
    Validates an email address
.DESCRIPTION
    This script uses the New-WebServiceProxy cmdlet to
	create a web service proxy. Then it calls that proxy
	to Validate an email address. 
.NOTES
    File Name  : validate-emailaddress.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
   Script posted to:
   http://www.pshscripts.blogspot.com
.INPUTTYPE
   String(s) representing email address to validate
.RETURNVALUE
   [Boolean] - whether email address was valid
.EXAMPLE
    Run from PowerShell Prompt:
	PS C:\foo> .\Validate-EmailAddress "tfl@psp.co.uk"
	True
.EXAMPLE
    Run from Pipeline:
	PS C:\foo> "tfl@psp.co.uk", "foo@foo.bar" | .\Validate-EmailAddress
	True
	False
.PARAMETER addr
    A string, or array of strings representing email addresses to check
#>

param(
[Parameter(Position=0, Mandatory=$FALSE, ValueFromPipeline=$TRUE)] 
[String] $Addr = "doctordns@gmail.com" )
process {
   $s = new-webserviceproxy -uri http://www.webservicex.net/validateEmail.asmx
   foreach ($a in $addr) {
      $result = $s.IsValidEmail($a)
	  $result
	} # end foreach
} #end process block