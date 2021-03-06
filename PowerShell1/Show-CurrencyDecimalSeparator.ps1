<#
.SYNOPSIS
    This script re-implements an MSDN script which
    shows the use of the CurrencyDecimalSeparator
    property of a numeric format info object. 
.DESCRIPTION
    This script displays a currency value using 
    the default decimal separator then shows using a
    custom separator. This is repeated using a German
    culture.   
.NOTES
    File Name  : Show-CurrencyDecimalSeparator.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/system.globalization.numberformatinfo.currencydecimalseparator.aspx
.EXAMPLE
     Psh> .\Show-CurrencyDecimalSeparator.ps1
    $123,456,789.00
    $123,456,789 00
    123.456.789,00 €
    123.456.789 00 €
#>

#    Get a NumberFormatInfo associated with the en-US culture
$nfi = (new-object System.Globalization.CultureInfo "en-US", $false ).NumberFormat

#    Display a value with the default separator (".").
$myInt = 123456789
$myInt.ToString( "C", $nfi ) 

#    Display the same value with a blank as the separator.
$nfi.CurrencyDecimalSeparator = " "
$myInt.ToString( "C", $nfi ) 

#    Now get a NumberFormatInfo associated with the de-DE culture
$nfi = (new-object System.Globalization.CultureInfo "de-DE", $false ).NumberFormat

#    Display a value with the default separator (".")
$myInt = 123456789
$myInt.ToString( "C", $nfi ) 

#    Display the same value with a blank as the separator
$nfi.CurrencyDecimalSeparator = " "
$myInt.ToString( "C", $nfi ) 