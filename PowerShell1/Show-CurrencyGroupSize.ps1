<#
.SYNOPSIS
    This script reimplements a code sample from MSDN in PowerShell.
    This sample formats and display currency using standard and
    different currency groupings. 
.DESCRIPTION
    This script displays a currency using standard, then two
    custom currencyGroupSizes.
.NOTES
    File Name  : Show-CurrencyGroupSize.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://
.EXAMPLE
    PSH:> .\Show-CurrencyGroupSize.ps1
    Default numeric format string "C"
    $123,456,789,012,345.00

    Display with array = 2,3,4
    $12,3456,7890,123,45.00

    Display with array = 2,3,0
    $1234567890,123,45.00
#>

#     Get a NumberFormatInfo associated with the en-US culture.
$fi = new-object System.Globalization.CultureInfo "en-US", false
$nfi = $fi.NumberFormat

#     Display a value with the default separator (".")
"Default numeric format string `"C`""
[Int64] $myInt = 123456789012345
$myInt.ToString( "C", $nfi )

#    Display the same value with different groupings.
[int[]] $mySizes1 = (2,3,4)
$mySizes = 2,3,0

"";"Display with array = 2,3,4"
$nfi.CurrencyGroupSizes = $mySizes1
$myInt.ToString( "C", $nfi )

"";"Display with array = 2,3,0"
$nfi.CurrencyGroupSizes = $mySizes2
$myInt.ToString( "C", $nfi )