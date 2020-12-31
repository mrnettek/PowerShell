##############################################################################
##
## Invoke-RemoteExpression.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Invoke a PowerShell expression on a remote machine. Requires PsExec from
## http://www.microsoft.com/technet/sysinternals/utilities/psexec.mspx
##
## ie:
##
##  PS >Invoke-RemoteExpression \\LEE-DESK { Get-Process }
##  PS >(Invoke-RemoteExpression \\LEE-DESK { Get-Date }).AddDays(1)
##  PS >Invoke-RemoteExpression \\LEE-DESK { Get-Process } | Sort Handles
##
##############################################################################

param(
  $computer = "\\$ENV:ComputerName",
  [ScriptBlock] $expression = $(throw "Please specify an expression to invoke."),
  [switch] $noProfile
  )

## Prepare the command line for PsExec. We use the XML output encoding so
## that PowerShell can convert the output back into structured objects.
$commandLine = "echo . | powershell -Output XML "

if($noProfile)
{
    $commandLine += "-NoProfile "
}

## Convert the command into an encoded command for PowerShell
$commandBytes = [System.Text.Encoding]::Unicode.GetBytes($expression)
$encodedCommand = [Convert]::ToBase64String($commandBytes)
$commandLine += "-EncodedCommand $encodedCommand"

## Collect the output and error output
$errorOutput = [IO.Path]::GetTempFileName()
$output = psexec /acceptEula $computer cmd /c $commandLine 2>$errorOutput

## Check for any errors
$errorContent = Get-Content $errorOutput
Remove-Item $errorOutput
if($errorContent -match "Access is denied")
{
    $OFS = "`n"
    $errorMessage = "Could not execute remote expression. "
    $errorMessage += "Ensure that your account has administrative " +
        "privileges on the target machine.`n"
    $errorMessage += ($errorContent -match "psexec.exe :")

    Write-Error $errorMessage
}

## Return the output to the user
$output