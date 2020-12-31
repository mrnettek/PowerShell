##############################################################################
##
## Search-Registry.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Search the registry for keys or properties that match a specific value.
##
## ie:
##
##  PS >Set-Location HKCU:\Software\Microsoft\
##  PS >Search-Registry Run
##
##############################################################################

param([string] $searchText = $(throw "Please specify text to search for."))

## Helper function to create a new object that represents 
## a registry match from this script
function New-RegistryMatch
{
    param( $matchType, $keyName, $propertyName, $line )

    $registryMatch = New-Object PsObject
    $registryMatch | Add-Member NoteProperty MatchType $matchType
    $registryMatch | Add-Member NoteProperty KeyName $keyName
    $registryMatch | Add-Member NoteProperty PropertyName $propertyName
    $registryMatch | Add-Member NoteProperty Line $line

    $registryMatch
}

## Go through each item in the registry
foreach($item in Get-ChildItem -Recurse -ErrorAction SilentlyContinue)
{
    ## Check if the key name matches
    if($item.Name -match $searchText)
    {
        New-RegistryMatch "Key" $item.Name $null $item.Name
    }

    ## Check if a key property matches
    foreach($property in (Get-ItemProperty $item.PsPath).PsObject.Properties)
    {
        ## Skip the property if it was one PowerShell added
        if(($property.Name -eq "PSPath") -or ($property.Name -eq "PSChildName"))
        {
            continue
        }

        ## Search the text of the property
        $propertyText = "$($property.Name)=$($property.Value)"
        if($propertyText -match $searchText)
        {
            New-RegistryMatch "Property" $item.Name $property.Name $propertyText
        }
    } 
}