<#
.SYNOPSIS
    This script Gets and displays a registry
    binary value using WMI.
.DESCRIPTION
    This script uses WMI to get, then display
    a binary registry Value.
    This is a re-write of a VB Sample Script.
.NOTES
    File Name  : Set-WmiRegistryBinaryValue.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/aa394600%28VS.85%29.aspx
.EXAMPLE
    Psh[C:\foo]>Get-WmiRegistryBinaryValue.ps1
    54
    46
    4c
#>

# Define Constants
$HKEY_Local_Machine =2147483650 
$computer ='.'

# Get Class to call static methods on
$reg = [WMIClass]"ROOT\DEFAULT:StdRegProv"

# Define key to create
$ValueName = "Example Binary Value"
$Values     = @(0x54, 0x46, 0x4C)
$Key       = "SOFTWARE\NewKey"

# Create Value entry
$results   = $reg.GetBinaryValue($HKEY_LOCAL_MACHINE, $Key, $ValueName)
Foreach ($byte in $results.uvalue) {"{0}" -f $byte.tostring("x")}