<#
.SYNOPSIS
    This script implements an MSDN sample in PowerShell
.DESCRIPTION
    This script uses the String Replace method to replace
    all occurences of one char in a string to another. 
.NOTES
    File Name  : Replace-String2.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/czx8s9ts%28VS.80%29.aspx
.EXAMPLE
    PSH [C:\foo]: .\Replace-String2.ps1'
    Original string: "1 2 3 4 5 6 7 8 9"
    CSV string:      "1,2,3,4,5,6,7,8,9"
#>

# Create string
$Str = "1 2 3 4 5 6 7 8 9"
 
# Display Original String
"Original string: `"{0}`"" -f $Str
 
# Display new string, replacing " " with ","
"CSV string:      `"{0}`"" -f $Str.Replace(' ', ',')
# End of script