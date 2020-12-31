<#
.SYNOPSIS
    Demonstrates try/catch/finally in V2
.DESCRIPTION
    Shows a simple example of the try/catch/finally syntax
	introduced into PowerShell CTP3. 
	The script divies by zero which creates an exception.
	The powershell parser is smart enougy to recognise any
	attempt to divide by "0" and therefore does not generate
	the run time error.
.NOTES
    File Name  : Show-TryCatchFinally.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
#>

##
# Start of script
##

# Try something that fails
$one=1
$zero=0
Try { 
      $one/$zero
    }
catch ("Attemped to divide by zero") {
"WOW"
}
Catch {
 "Caught in a catch"
 $err=$Error[0]
 $err
 $err |Format-List *}
Finally {"All done with trying and catching"
}