<#
.SYNOPSIS
    This script shows the first two samples on this MSDN Page,
    convered to PowerShell 
.DESCRIPTION
    This script displays two lines of text using PowerShell
    and .NET formatting information
.NOTES
    File Name  : Show-StandardNFS-1.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted tot:
        http://msdn.microsoft.com/en-us/library/dwhawy9k.aspx
.EXAMPLE
    [Cookham8:C:\foo]> .\Show-StandardNFS.ps1
    $123.46
    Your account balance is $123.46.
#>

# Show formatting a number as currency
$value = 123.456
$value.ToString("C2")

# Show the -f operator with currency formatting
$value = 123.456
"Your account balance is {0:C2}." -f $value