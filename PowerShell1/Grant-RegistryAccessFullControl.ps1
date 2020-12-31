##############################################################################
##
## Grant-RegistryAccessFullControl.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Grants full control access to a user for the specified registry key.
##
## ie:
##
##  PS >$registryPath = "HKLM:\Software\MyProgram"
##  PS >Grant-RegistryAccessFullControl "LEE-DESK\LEE" $registryPath
##
##############################################################################

param(
  $user = $(throw "Please specify a user account."),
  $registryPath = $(throw "Please specify a registry path.")
  )

Push-Location
Set-Location -LiteralPath $registryPath

## Retrieve the ACL from the registry key
$acl = Get-Acl .

## Prepare the access rule, and set the access rule
$arguments = $user,"FullControl","Allow"
$accessRule = New-Object System.Security.AccessControl.RegistryAccessRule $arguments
$acl.SetAccessRule($accessRule)

## Apply the modified ACL to the regsitry key
$acl | Set-Acl  .

Pop-Location
