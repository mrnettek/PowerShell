<#
.SYNOPSIS
    This script implements an MSDN Encoding example in PowerShell 
.DESCRIPTION
    This script creates an encoding plus a unicode string then
    manipulates it as per the C# sample.
.NOTES
    File Name  : Get-UTF8Encoding
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.text.utf8encoding.aspx
.EXAMPLE
    PSH [C:\foo]: . 'C:\Users\tfl\AppData\Local\Temp\Untitled7.ps1'
    Original string:This unicode string contains two characters with codes outside an 8-bit code 
    range, Pi (p) and Sigma (S).
    Encoded bytes:
    <long table omitted>
	Decoded bytes:
    This unicode string contains two characters with codes outside an 8-bit code range, Pi (p) and
    Sigma (S).
#>
#  Start of Script
# Create a UTF-8 encoding.
$utf8 = New-Object System.Text.utf8encoding
$unicodeString =
            "This unicode string contains two characters " +
            "with codes outside an 8-bit code range, " +
            "Pi (" + [char] 0x03a0 + ") and Sigma (" + [char] 0x03a3 + ")."
"Original string:{0}" -f $unicodeString

# Encode the string.
$encodedBytes = $utf8.GetBytes($unicodeString)
""
"Encoded bytes:"
foreach($b in $encodedBytes) {"[{0}]" -f $b}

# Decode bytes back to string
# Notice Pi and Sigma characters are still present
$decodedString = $utf8.GetString($encodedBytes)
"";"Decoded bytes:"
$decodedString   
# End of Script