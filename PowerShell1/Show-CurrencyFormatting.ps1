<#
.SYNOPSIS
    This script re-implements an MSDN Sample showing the 
    use of the NumberFormatInfo class to nicely format things
    in this case, currency.
.DESCRIPTION
    This script iterates through the Windows cultures and
    displays those whose 2-letter ISO code is 'en' and 
    displays how Windows formats currency in that culture. 
.NOTES
    File Name  : Show-CurrencyFormatting.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/system.globalization.numberformatinfo.aspx
.EXAMPLE
    Psh > .\Show-CurrencyFormatting.ps1
    The currency symbol for 'English (United States)' is '$'
    The currency symbol for 'English (United Kingdom)' is '£'
    The currency symbol for 'English (Australia)' is '$'
    The currency symbol for 'English (Canada)' is '$'
    The currency symbol for 'English (New Zealand)' is '$'
    The currency symbol for 'English (Ireland)' is '€'
    The currency symbol for 'English (South Africa)' is 'R'
    The currency symbol for 'English (Jamaica)' is 'J$'
    The currency symbol for 'English (Caribbean)' is '$'
    The currency symbol for 'English (Belize)' is 'BZ$'
    The currency symbol for 'English (Trinidad and Tobago)' is 'TT$'
    The currency symbol for 'English (Zimbabwe)' is 'Z$'
    The currency symbol for 'English (Republic of the Philippines)' is 'Php'
    The currency symbol for 'English (Singapore)' is '$'
    The currency symbol for 'English (Malaysia)' is 'RM'
    The currency symbol for 'English (India)' is 'Rs.'

#>

#   Loop through all the specific cultures known to the CLR.
foreach ($ci in [System.Globalization.CultureInfo]::GetCultures([System.Globalization.CultureTypes]::SpecificCultures)) 
        {
            # Only show the currency symbols for cultures that speak English.
            if ($ci.TwoLetterISOLanguageName -eq "en") {
            # Display the culture name and currency symbol.
               $nfi = $ci.NumberFormat
               "The currency symbol for '{0}' is '{1}'" -f $ci.DisplayName, $nfi.CurrencySymbol
            }
        }