<#
.SYNOPSIS
    This script sets a registry binary value
    using WMI.
.DESCRIPTION
    This script uses WMI to set a binary 
    registry Value.
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
    Psh[C:\foo]>New-WmiRegistryBinaryValue.ps1
    Value created
#>

# Define Constants
$HKEY_Local_Machine =2147483650 
$computer ='.'

# Get Class to call static methods on
$reg = [WMIClass]"ROOT\DEFAULT:StdRegProv"

# Define key to create
$Key       = "SOFTWARE\NewKey"
$ValueName = "Example MultiString Value"
$Values     = @("Thomas", "Susan", "Rebecca")
$Key       = "SOFTWARE\NewKey"

# Create Value entry
$results   = $reg.SetMultiStringValue($HKEY_LOCAL_MACHINE, $Key, $ValueName, $Values)
If ($results.Returnvalue -eq 0) {"Value Set"} 
