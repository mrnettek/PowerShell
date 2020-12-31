## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)

param([double] $fahrenheit)

$scriptDirectory = Split-Path $myInvocation.MyCommand.Path
. (Join-Path $scriptDirectory LibraryTemperature.ps1)

$celcius = ConvertFahrenheitToCelcius $fahrenheit

## Output the answer
"$fahrenheit degrees Fahrenheit is $celcius degrees Celcius."