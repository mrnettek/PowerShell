##############################################################################
##
## Get-RemoteRegistryKeyProperty.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Get the value of a remote registry key property
##
## ie:
##
##  PS >$registryPath = 
##       "HKLM:\software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell"
##  PS >Get-RemoteRegistryKeyProperty LEE-DESK $registryPath "ExecutionPolicy"
##
##############################################################################

param(
  $computer = $(throw "Please specify a computer name."),
  $path = $(throw "Please specify a registry path"),
  $property = "*"
  )

## Validate and extract out the registry key
if($path -match "^HKLM:\\(.*)")
{
    $baseKey = [Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey(
        "LocalMachine", $computer)
}
elseif($path -match "^HKCU:\\(.*)")
{
    $baseKey = [Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey(
        "LocalMachine", $computer)
}
else
{
    Write-Error ("Please specify a fully-qualified registry path " +
        "(i.e.: HKLM:\Software) of the registry key to open.")
    return
}

## Open the key
$key = $baseKey.OpenSubKey($matches[1])
$returnObject = New-Object PsObject

## Go through each of the properties in the key
foreach($keyProperty in $key.GetValueNames())
{
    ## If the property matches the search term, add it as a
    ## property to the output
    if($keyProperty -like $property)
    {
        $returnObject | 
            Add-Member NoteProperty $keyProperty $key.GetValue($keyProperty)
    }
}

## Return the resulting object
$returnObject

## Close the key and base keys
$key.Close()
$baseKey.Close()

