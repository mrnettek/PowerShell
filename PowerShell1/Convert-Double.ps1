<#
.SYNOPSIS
    This script is an updated MSDN sample showing converstion to int32, boolean, string
    and char. The sample is written using PowerShell
.DESCRIPTION
    This script
.NOTES
    File Name  : convert-double.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.convert.aspx
.EXAMPLE
    PSH [C:\foo]: .\convert-double.ps1'
    Converting 23.15 to an int32 = 23
    Converting 23.15 to an Boolean = True
    Converting 23.15 to a String = 23.15
    Converting 1st char of "23.15" to a char = 2
#>

##
# Start of sample
##
 
# Create double to convert
[system.double] $dNumber = 23.15

# convert to int32
[int32] $iNumber = [System.Convert]::ToInt32($dNumber)
"Converting $dnumber to an int32 = $inumber"
 
# convert to bool
[bool] $bNumber = [System.Convert]::ToBoolean($dNumber);
"Converting $dnumber to an Boolean = $bNumber"
 
# convert to string
[string] $strNumber = [System.Convert]::ToString($dNumber)
"Converting $dnumber to a String = $strNumber"
 
# convert a single char in the string to a char
[char] $chrNumber = [System.Convert]::ToChar($strNumber[0]);
"Converting 1st char of `"$strnumber`" to a char = $chrNumber"
# End of script