##############################################################################  
##  
## Use-Culture.ps1  
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##  
## Invoke a scriptblock under the given culture
##
## ie:  
##  
## PS >Use-Culture fr-FR { [DateTime]::Parse("25/12/2007") }
## 
## mardi 25 décembre 2007 00:00:00##   
##  
##############################################################################  

param(
    [System.Globalization.CultureInfo] $culture = 
        $(throw "Please specify a culture"),
    [ScriptBlock] $script = $(throw "Please specify a scriptblock")
   )

## A helper function to set the current culture
function Set-Culture([System.Globalization.CultureInfo] $culture)
{
    [System.Threading.Thread]::CurrentThread.CurrentUICulture = $culture
    [System.Threading.Thread]::CurrentThread.CurrentCulture = $culture
}

## Remember the original culture information
$oldCulture = [System.Threading.Thread]::CurrentThread.CurrentUICulture
   
## Restore the original culture information if
## the user's script encounters errors.
trap { Set-Culture $oldCulture }

## Set the current culture to the user's provided
## culture.
Set-Culture $culture

## Invoke the user's scriptblock
& $script

## Restore the original culture information.
Set-Culture $oldCulture
