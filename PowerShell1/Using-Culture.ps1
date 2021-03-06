<#
.SYNOPSIS
    This script creates a function to run culture sensitive operations in some other culture.
.DESCRIPTION
    The Using-Culture function gets the current culture, saves it, then runs the script block
    in the requested culture. The function then restores the culture.
    The script then ends with calls to Using-Culture to demonstrate its use.
.NOTES
    File Name  : Using-Culture.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
.EXAMPLE
    run the script and see!
#>

# Defind the Using-Culture function
Function Using-Culture {
Param (
[System.Globalization.CultureInfo]$culture = (throw "USAGE: Using-Culture -Culture culture -Script {scriptblock}"),
[ScriptBlock]$script= (throw "USAGE: Using-Culture -Culture culture -Script {scriptblock}")
)
    $OldCulture = [System.Threading.Thread]::CurrentThread.CurrentCulture
    trap 
    {
        [System.Threading.Thread]::CurrentThread.CurrentCulture = $OldCulture
    }
    [System.Threading.Thread]::CurrentThread.CurrentCulture = $culture
    Invoke-Command $script
    [System.Threading.Thread]::CurrentThread.CurrentCulture = $OldCulture
}
##
# Now use the function
##

# Here is an example of Using-Culture
"Get-Date using ar-IQ"
using-culture ar-IQ {get-date}
""
# Parse ar-IQ formatted date into local culture
"Parse IQ date to English and display"
$IQD = "30 تشرين الثاني, 2005 09:01:38 ص"
using-culture ar-IQ {$global:d=[DateTIme]::Parse($IQD)}
$IQD
$d
""
# Now do it in German
"Get-Date using de-de"
using-culture de-de {get-date}
""
"Parsing a german date into local"
$ded="Mittwoch, 30. November 2005 09:02:29"
using-culture de-de {$global:d=[DateTIme]::Parse($DED)}
$ded
$d