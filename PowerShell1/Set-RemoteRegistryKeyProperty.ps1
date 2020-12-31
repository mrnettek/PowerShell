##############################################################################
##
## Set-RemoteRegistryKeyProperty.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Set the value of a remote registry key property
##
## ie:
##
##  PS >$registryPath = 
##       "HKLM:\software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell"
##  PS >Set-RemoteRegistryKeyProperty LEE-DESK $registryPath `
##       "ExecutionPolicy" "RemoteSigned"
##
##############################################################################

param(
  $computer = $(throw "Please specify a computer name."),
  $path = $(throw "Please specify a registry path"),
  $property = $(throw "Please specify a property name"),
  $propertyValue = $(throw "Please specify a property value")
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

## Open the key and set its value
$key = $baseKey.OpenSubKey($matches[1], $true)
$key.SetValue($property, $propertyValue)

## Close the key and base keys
$key.Close()
$baseKey.Close()