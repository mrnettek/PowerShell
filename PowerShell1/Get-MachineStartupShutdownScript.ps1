<#
.SYNOPSIS
    Gets machine startup and shutdown scripts 
.DESCRIPTION
    From Windows PowerShell Cookbook (O'Reilly)
    by Lee Holmes (http://www.leeholmes.com/guide)
.NOTES
    File Name  : Get-MachineStartupShutdownScript.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS c:\foo .\Get-MachineStartupShutdownScript Startup
.PARAMETER ScriptType
    The type of script - startup/shutdown
	Default value is Startup
#>

param(
[Parameter(Position=0, Mandatory=$False, ValueFromPipeline=$true,
           HelpMessage="Script Type to get"]
[string]  $ScriptType="Startup"
)

##
# start of script
##


Process {
# Verify that they've specified a correct script type
$ScriptOptions = "Startup","Shutdown"
if($ScriptOptions -notcontains $ScriptType) {
    $Error = "Cannot convert value {0} to a script type. " +
             "Specify one of the following values and try again. " +
             "The possible values are ""{1}""."
    Throw ($Error -f $scriptType, ([string] $ScriptOptions))
}

# Specify the location of the group policy scripts for the machine
$RegistryKey = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System\Scripts"

# Check for existance
$KeyOK = ls $RegistryKey -erroraction silentlycontinue
if (!$KeyOK) {
   "No {0} scripts exist on this system" -f $ScriptType
   return
}

# Go through each of the policies in the specified key
# for each of the scripts in that policy, get script name and parameters
foreach($Policy in Get-ChildItem $RegistryKey\$ScriptType) {
    foreach($Script in Get-ChildItem $Policy.PsPath)   {
        Get-ItemProperty $Script.PsPath | Select Script,Parameters
    }
}
}