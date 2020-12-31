<#
.SYNOPSIS
    Demonstrates the sting builder feature of .NET
.DESCRIPTION
    This script creates a string builer object and
	adds characters to it. This is an MSDN sample
	recoded into PowerShell.
.NOTES
    File Name  : Build-String1.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\Build-string1.ps1
    11 chars: ABCDEFGHIJk
    21 chars: Alphabet: ABCDEFGHIJK
#>

##
# Start of script
##
 
# Create a StringBuilder that expects to hold 50 characters.
# Initialize the StringBuilder with "ABC".
$sb = new-object system.text.stringBuilder "ABC", 50
 
# Append three characters (D, E, and F) to the end of the StringBuilder.
$resw = $sb.Append("D")
$resw = $sb.Append("E")
$resw = $sb.Append("F")
 
# Append a format string to the end of the StringBuilder.
$resw = $sb.AppendFormat("GHI{0}{1}", 'J', 'k')
 
# Display the number of characters in the StringBuilder and its string.
"{0} chars: {1}" -f $sb.Length, $sb.ToString()
 
# Insert a string at the beginning of the StringBuilder.
$resw = $sb.Insert(0, "Alphabet: ")
 
# Replace all lowercase k's with uppercase K's.
$resw = $sb.Replace('k', 'K')
 
# Display the number of characters in the StringBuilder and its string.
"{0} chars: {1}" -f $sb.Length, $sb.ToString()
# End of script