##############################################################################
##
## Start-ProcessAsUser.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Launch a process under alternate credentials, providing functionality
## similar to runas.exe.
##
## ie:
##
##  PS >$file = Join-Path ([Environment]::GetFolderPath("System")) certmgr.msc
##  PS >Start-ProcessAsUser Administrator mmc $file
##
##
##
##############################################################################

param(
  $credential = (Get-Credential),
  [string] $process = $(throw "Please specify a process to start."),
  [string] $arguments = ""
  )

## Create a real credential if they supplied a username
if($credential -is "String")
{
    $credential = Get-Credential $credential
}

## Exit if they canceled out of the credential dialog
if(-not ($credential -is "System.Management.Automation.PsCredential"))
{
    return
}

## Prepare the startup information (including username and password)
$startInfo = New-Object Diagnostics.ProcessStartInfo
$startInfo.Filename = $process
$startInfo.Arguments = $arguments

## If we're launching as ourselves, set the "runas" verb
if(($credential.Username -eq "$ENV:Username") -or
   ($credential.Username -eq "\$ENV:Username"))
{
    $startInfo.Verb = "runas"
}
else
{
    $startInfo.UserName = $credential.Username
    $startInfo.Password = $credential.Password
    $startInfo.UseShellExecute = $false
}

## Start the process
[Diagnostics.Process]::Start($startInfo)