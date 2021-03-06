<#
.SYNOPSIS
    Shows formatting of leading Zeros
.DESCRIPTION
    This script, a re-implementation of an MSDN Sample, 
    creates several numbers of varying type, then
    displays them using .NET Formatting. The second set
    of formating shows the difference between .ToString()
    and composite format strings to format - to approaches
    that accomplish the same goal!
.NOTES
    File Name  : Show-NumberPadding1.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
         http://msdn.microsoft.com/en-us/library.
.EXAMPLE
    Psh> Show-NumberPadding1.ps1
                  00000254               000000FE
                  00010342               00002866
                  01023983               000F9FEF
                  06985321               006A9669
       9223372036854775807       7FFFFFFFFFFFFFFF
      18446744073709551615       FFFFFFFFFFFFFFFF
    
                  00000254               000000FE
                  00010342               00002866
                  01023983               000F9FEF
      9223372036854775807       7FFFFFFFFFFFFFFF
      18446744073709551615       FFFFFFFFFFFFFFFF       

#>

[byte]   $byteValue   = 254
[int16]  $shortValue  = 10342
[int]    $intValue    = 1023983
[long]   $lngValue    = 6985321
[long]   $lngValue2   = [System.int64]::MaxValue
[UInt64] $ulngValue   = [System.UInt64]::MaxValue

# Display integer values by caling the ToString method.
"{0,22} {1,22}" -f $byteValue.ToString("D8"), $byteValue.ToString("X8")
"{0,22} {1,22}" -f $shortValue.ToString("D8"), $shortValue.ToString("X8")
"{0,22} {1,22}" -f $intValue.ToString("D8"), $intValue.ToString("X8")
"{0,22} {1,22}" -f $lngValue.ToString("D8"), $lngValue.ToString("X8")
"{0,22} {1,22}" -f $lngValue2.ToString("D8"), $lngValue2.ToString("X8")
"{0,22} {1,22}" -f $ulngValue.ToString("D8"), $ulngValue.ToString("X8")
""

# Display the same integer values by using composite formatting
"{0,22:D8} {0,22:X8}" -f $byteValue
"{0,22:D8} {0,22:X8}" -f $shortValue
"{0,22:D8} {0,22:X8}" -f $intValue
"{0,22:D8} {0,22:X8}" -f $lngValue2
"{0,22:D8} {0,22:X8}" -f $ulngValue
