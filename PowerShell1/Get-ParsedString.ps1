<#
.SYNOPSIS
    Formats a number using .NET - an MSDN Sample recoded in PowerShell
.DESCRIPTION
    This script createa a number and formats it in Hex. Then a negative number
	is created and formatted several ways. Uses int32.parse method to do the 
	parsing.
.NOTES
    File Name  : Get-ParsedString
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Posted to:
	http://pshscripts.blogspot.com/2008/12/get-parsedstringps1.html
	Script also posted to MSDN at:
	http://msdn.microsoft.com/en-us/library/system.globalization.numberstyles(VS.85).aspx
.EXAMPLE
    PS c:\foo> .\Get-ParsedString.ps1
    A in hex = 10 in decimal
    '    -42    ' parsed to an int32 is '-42'.
    '    (42)   ' parsed to an int32 is '-42'.
#>


###
#  Start of Script
###

# Parse the string as a hex value and display the value as a decimal.
$num = "A"
$val = [system.int32]::Parse($num, [System.Globalization.NumberStyles]::HexNumber)

"{0} in hex = {1} in decimal" -f $num,$val

# Parse the string, allowing a leading sign, and ignoring leading and trailing white spaces.
$num = "    -42    "

# create parsing value using value__
$format  = [System.Globalization.NumberStyles]::AllowLeadingSign.value__+
           [System.Globalization.NumberStyles]::AllowLeadingWhite.value__ +
           [System.Globalization.NumberStyles]::AllowTrailingWhite.value__ 	
$parsing = [System.Globalization.NumberStyles] $format	   

# parse and display
$val = [system.int32]::Parse($num,$parsing)
"'{0}' parsed to an int32 is '{1}'." -f $num, $val

# Now try a negative number
$num = "    (42)   "
$format  = [System.Globalization.NumberStyles]::AllowParentheses.value__  +
           [System.Globalization.NumberStyles]::AllowLeadingSign.value__  +
		   [System.Globalization.NumberStyles]::AllowLeadingWhite.value__ +
		   [System.Globalization.NumberStyles]::AllowTrailingWhite.value__
$parsing = [System.Globalization.NumberStyles] $format	   		   

# And parse/display it
$val = [system.int32]::Parse($num, $parsing)
"'{0}' parsed to an int32 is '{1}'." -f $num, $val