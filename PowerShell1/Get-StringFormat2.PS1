<#
.SYNOPSIS
    Demonstrates string formatting using Powershell
.DESCRIPTION
    This script formats 2 numbers in a variety of ways, also
	formats an enum.
	An adaptation of the C# sample in the MSDN Library. However,
	this script uses a built-in enum, and displays two.
.NOTES
	Author   : Thomas Lee - tfl@psp.co.uk
.INPUTTYPE
   This script has no effective parameters.
.RETURNVALUE
   This script produces output as shown in the example
.LINK
    http:////msdn.microsoft.com/en-us/library/fht0f5be.aspx
    http://www.pshscripts.blogspot.com
.EXAMPLE
PS C:\foo> .\'Get-StringFormat2.ps1'
(C) Currency: . . . . . . . . ($123.00)
(D) Decimal:. . . . . . . . . -123
(E) Scientific: . . . . . . . -1.234500E+002
(F) Fixed point:. . . . . . . -123.45
(G) General:. . . . . . . . . -123
(default):. .     . . . . . . -123
(N) Number: . . . . . . . . . -123.00
(P) Percent:. . . . . . . . . -12,345.00 %
(R) Round-trip: . . . . . . . -123.45
(X) Hexadecimal:. . . . . . . FFFFFF85

Date Format
(d) Short date: . . . . . . . 12/25/2008
(D) Long date:. . . . . . . . Thursday, December 25, 2008
(t) Short time: . . . . . . . 2:12 PM
(T) Long time:. . . . . . . . 2:12:55 PM
(f) Full date/short time: . . Thursday, December 25, 2008 2:12 PM
(F) Full date/long time:. . . Thursday, December 25, 2008 2:12:55 PM
(g) General date/short time:. 12/25/2008 2:12 PM
(G) General date/long time: . 12/25/2008 2:12:55 PM
    (default):. . . . . . . . 12/25/2008 2:12:55 PM
(M) Month:. . . . . . . . . . December 25
(R) RFC1123:. . . . . . . . . Thu, 25 Dec 2008 14:12:55 GMT
(s) Sortable: . . . . . . . . 2008-12-25T14:12:55
(u) Universal sortable: . . . 2008-12-25 14:12:55Z
(U) Universal full date/time: Thursday, December 25, 2008 2:12:55 PM
(Y) Year: . . . . . . . . . . December, 2008

Standard Enumeration Format Specifiers
(G) General:. . . . . . . . . Green
    (default):. . . . . . . . Green
(F) Flags:. . . . . . . . . . Green
(D) Decimal number: . . . . . 79
(X) Hexadecimal:. . . . . . . 0000004F
Standard Enumeration Format Specifiers (again)
(G) General:. . . . . . . . . Gainsboro
    (default):. . . . . . . . Gainsboro
(F) Flags:. . . . . . . . . . Gainsboro
(D) Decimal number: . . . . . 74
(X) Hexadecimal:. . . . . . . 0000004A
.EXAMPLE
PS C:\Users\tfl> Get-Help .\Get-StringFormat2.ps1'
Left as an exercise for the reader.
#>

##
# Start of script
##

#Format a negative integer or floating-point number in various ways.
"Standard Numeric Format Specifiers"
"(C) Currency: . . . . . . . . {0:C}" -f -123
"(D) Decimal:. . . . . . . . . {0:D}" -f -123
"(E) Scientific: . . . . . . . {0:E}" -f -123.45
"(F) Fixed point:. . . . . . . {0:F}" -f -123.45
"(G) General:. . . . . . . . . {0:G}" -f -123
"(default):. .     . . . . . . {0}  " -f -123
"(N) Number: . . . . . . . . . {0:N}" -f -123
"(P) Percent:. . . . . . . . . {0:P}" -f -123.45
"(R) Round-trip: . . . . . . . {0:R}" -f -123.45
"(X) Hexadecimal:. . . . . . . {0:X}" -f -123
""    
# Format the current date in various ways.
$today = Get-Date
"Date Format"
"(d) Short date: . . . . . . . {0:d}" -f $today
"(D) Long date:. . . . . . . . {0:D}" -f $today
"(t) Short time: . . . . . . . {0:t}" -f $today
"(T) Long time:. . . . . . . . {0:T}" -f $today
"(f) Full date/short time: . . {0:f}" -f $today
"(F) Full date/long time:. . . {0:F}" -f $today
"(g) General date/short time:. {0:g}" -f $today
"(G) General date/long time: . {0:G}" -f $today
"    (default):. . . . . . . . {0} "  -f $today
"(M) Month:. . . . . . . . . . {0:M}" -f $today
"(R) RFC1123:. . . . . . . . . {0:R}" -f $today
"(s) Sortable: . . . . . . . . {0:s}" -f $today
"(u) Universal sortable: . . . {0:u}" -f $today
"(U) Universal full date/time: {0:U}" -f $today
"(Y) Year: . . . . . . . . . . {0:Y}" -f $today
""
# Format a Color enumeration value in various ways.
"Standard Enumeration Format Specifiers"
"(G) General:. . . . . . . . . {0:G}"  -f  [system.Drawing.KnownColor]::Green
"    (default):. . . . . . . . {0}"    -f  [system.Drawing.KnownColor]::Green
"(F) Flags:. . . . . . . . . . {0:F} " -f  [system.Drawing.KnownColor]::Green
"(D) Decimal number: . . . . . {0:D} " -f  [system.Drawing.KnownColor]::Green
"(X) Hexadecimal:. . . . . . . {0:X}"  -f  [system.Drawing.KnownColor]::Green
"Standard Enumeration Format Specifiers (again)"
"(G) General:. . . . . . . . . {0:G}"  -f  [system.Drawing.KnownColor]::Gainsboro
"    (default):. . . . . . . . {0}"    -f  [system.Drawing.KnownColor]::Gainsboro
"(F) Flags:. . . . . . . . . . {0:F} " -f  [system.Drawing.KnownColor]::Gainsboro
"(D) Decimal number: . . . . . {0:D} " -f  [system.Drawing.KnownColor]::Gainsboro
"(X) Hexadecimal:. . . . . . . {0:X}"  -f  [system.Drawing.KnownColor]::Gainsboro
### End of Script