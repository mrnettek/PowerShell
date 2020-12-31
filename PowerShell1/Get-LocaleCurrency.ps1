<#
.SYNOPSIS
    This script displays a number formatted in Currency for each locale
.DESCRIPTION
    This script first creates a value to be formatted, and creates an array
    containing all the locales defined on the system. The script then uses 
    each locale to format the value as currency.
.NOTES
    File Name  : Get-LocaleCurrency.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
.EXAMPLE
    Left as an exercise for the reader! NB: the output will look better
    is this script is run in PowerShell ISE vs PowerShell console.
	
#>
##
# Start of script
##
 
#Create a value to be formatted
[int] $Value = 100

# get all hte locales defined in the system
$L=[system.Globalization.CultureInfo]::GetCultures('AllCultures') | sort lcid

foreach ($C in $L) {

$C=New-Object System.Globalization.CultureInfo $C.Name
if (!$C.IsNeutralCulture){
   "{0,-50} {1,-6}  {2}" -f $C.Displayname,$C.Name,$Value.ToString("C",$c)
   }
}