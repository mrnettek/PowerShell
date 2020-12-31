##############################################################################
##
## Get-UserLogonLogoffScript.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Get the logon or logoff scripts assigned to a specific user
##
## ie:
##
##  PS >Get-UserLogonLogoffScript LEE-DESK\LEE Logon
##
##############################################################################

param(
  $username = $(throw "Please specify a username"),
  $scriptType = $(throw "Please specify the script type")
  )

## Verify that they've specified a correct script type
$scriptOptions = "Logon","Logoff"
if($scriptOptions -notcontains $scriptType)
{
    $error = "Cannot convert value {0} to a script type. " +
             "Specify one of the following values and try again. " +
             "The possible values are ""{1}""."
    $ofs = ", "
    throw ($error -f $scriptType, ([string] $scriptOptions))
}

## Find the SID for the username
$account = New-Object System.Security.Principal.NTAccount $username
$sid = 
    $account.Translate([System.Security.Principal.SecurityIdentifier]).Value

## Map that to their group policy scripts
$registryKey = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\" +
    "Group Policy\State\$sid\Scripts"

## Go through each of the policies in the specified key
foreach($policy in Get-ChildItem $registryKey\$scriptType)
{
    ## For each of the scripts in that policy, get its script name
    ## and parameters
    foreach($script in Get-ChildItem $policy.PsPath)
    {
        Get-ItemProperty $script.PsPath | Select Script,Parameters
    }
}