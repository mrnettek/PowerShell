## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)

param([double] $fahrenheit)

## Convert it to Celcius
$celcius = $fahrenheit - 32
$celcius = $celcius / 1.8

## Output the answer
"$fahrenheit degrees Fahrenheit is $celcius degrees Celcius."