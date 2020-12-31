<#
.SYNOPSIS
    Demonstrates simple string formatting using Powershell
.DESCRIPTION
    This script formats 5 numbers in Decimal, Hex and Currency and is
    an adaptation of the C# sample in the MSDN Library
.NOTES
	Author   : Thomas Lee - tfl@psp.co.uk
.INPUTTYPE
   This script has no effective parameters.
.RETURNVALUE
   This script produces a short table of output, as shown in the Example.
.LINK
    http:////msdn.microsoft.com/en-us/library/fht0f5be.aspx
    http://www.pshscripts.blogspot.com
.EXAMPLE
   PS C:\foo> .\Get-StringFormat1.ps1 
   Decimal         Hex        Currency
    -32768:       8000   ($32,768.00)
       -27:   FFFFFFE5       ($27.00)
         0:          0          $0.00
      1042:        412      $1,042.00
     32767:       7FFF     $32,767.00
#>

# Create an array of values to display
$values = [Int16]::MinValue, -27, 0, 1042, [Int16]::maxValue

# Print header line then values
 "{0,10}  {1,10}  {2,14}" -f "Decimal", "Hex", "Currency"
foreach ($value in $values) {
    "{0,10:G}: {0,10:X} {0,14:C}" -f $value
}