## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)

param([double] $fahrenheit)

## Convert Fahrenheit to Celcius
function ConvertFahrenheitToCelcius([double] $fahrenheit)
{
    $celcius = $fahrenheit - 32
    $celcius = $celcius / 1.8
    $celcius
}

$celcius = ConvertFahrenheitToCelcius $fahrenheit

## Output the answer
"$fahrenheit degrees Fahrenheit is $celcius degrees Celcius."