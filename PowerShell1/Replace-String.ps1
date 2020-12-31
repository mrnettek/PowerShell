<#
.SYNOPSIS
    This script demonstrates how to do .REPLACE() in a string.
.DESCRIPTION
    This script is a MSDN sample, recoded in PowerShell
.NOTES
    File Name  : Replace-String.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2010/05/replace-stringps1.html
    MSDN Sample posted at:
	    hhttp://msdn.microsoft.com/en-us/library/fk49wtc1%28VS.80%29.aspx
.EXAMPLE
    PSH [C:\foo]: .\Replace-String.ps1
    The original string is:
    This docment uses 3 other docments to docment the docmentation
    
    After correcting the string, the result is:
    This document uses 3 other documents to document the documentation
#>

##
# Start of script
##
 
# Create a string complete with misspelling and display it
$errString = "This docment uses 3 other docments to docment the docmentation"
"The original string is:`n{0}" -f $errString
""

# Correct the spelling of "document" using .Replace() and display 
# the corrected string
$correctString = $errString.Replace("docment", "document")
"After correcting the string, the result is: `n{0}" -f $correctstring
# End of script