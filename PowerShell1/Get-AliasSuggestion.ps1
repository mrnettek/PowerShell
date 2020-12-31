############################################################################## 
## 
## Get-AliasSuggestion.ps1 
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
## 
## Get an alias suggestion from the full text of the last command
##
## ie: 
## 
## PS > Get-AliasSuggestion Remove-ItemProperty
## Suggestion: An alias for Remove-ItemProperty is rp
##
############################################################################## 

param($lastCommand)

$helpMatches = @()

## Get the alias suggestions
foreach($alias in Get-Alias)
{
    if($lastCommand -match ("\b" + 
       [System.Text.RegularExpressions.Regex]::Escape($alias.Definition) + "\b"))
    {
        $helpMatches += "Suggestion: An alias for $($alias.Definition) is $($alias.Name)"
    }
}

$helpMatches
