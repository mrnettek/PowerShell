##############################################################################
##
## LibraryTemperature.ps1
## Functions that manipulate and convert temperatures
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
##############################################################################

## Convert Fahrenheit to Celcius
function ConvertFahrenheitToCelcius([double] $fahrenheit)
{
    $celcius = $fahrenheit - 32
    $celcius = $celcius / 1.8
    $celcius
}
