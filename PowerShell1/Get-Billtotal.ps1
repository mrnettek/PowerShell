<#
.SYNOPSIS
    Calculates a tip on a bill and displays total
.DESCRIPTION
    This script takes an amount (as a parameter), calculates
	the tip and displays the total
.NOTES
    File Name  : Get-Billtotal.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS c:\foo> .\Get-Billtotal.ps1 45.00
	Bill total:       £45.00
    Tip total/rate:    £6.75 (15.0 %)
    ------------------------
    Grand total:      £51.75
.Parameter BillTotal
    This is the amount of the bill, pre-tip.
#>

##
#  Start of script
##

param ( 
[Parameter(Position=0, Mandatory=$true,ValueFromPipeLine=$true)]
[double] $BillTotal=$(Throw "Usage: Get-BillTotal <amount pre-tip>")
)
	1
# Check Params
[double] $TipRate = 0.15

try {
  $billTotal = [double]::Parse($BillTotal);
 }
catch {
[System.Console]::WriteLine("usage: get-billtotal total");
}

#Calculate and display tip/total
[double] $Tip = $BillTotal * $TipRate
[System.Console]::WriteLine();
[System.Console]::WriteLine("Bill total:`t{0,8:c}", $billTotal);
[System.Console]::WriteLine("Tip total/rate:`t{0,8:c} ({1:p1})", $tip, $tipRate);
[System.Console]::WriteLine(("").PadRight(24, '-'));
[System.Console]::WriteLine("Grand total:`t{0,8:c}", $billTotal + $tip);
# End Script