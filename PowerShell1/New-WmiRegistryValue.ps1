<#
.SYNOPSIS
    This script creates a new registry Value using WMI.
.DESCRIPTION
    This script uses WMI to get create a new registry Value.
    This is a re-write of a VB Sample Script
.NOTES
    File Name  : New-RegistryKey.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/aa394600%28VS.85%29.aspx
.EXAMPLE
    Psh[C:\foo]>New-WmiRegistryValue.ps1
    Value created
#>

# Define Constants
$HKEY_Local_Machine =2147483650 
$computer ='.'

# Get Class to call static methods on
$reg = [WMIClass]"ROOT\DEFAULT:StdRegProv"

# Define key to create
$ValueName = "Example_Expanded_String_Value"
$Value     = "%PATHEXT%"
$Key       = "SOFTWARE\NewKey"

# Create Value entry
$results   = $reg.SetExpandedStringValue($HKEY_LOCAL_MACHINE, $Key, $ValueName, $Value)
If ($results.Returnvalue -eq 0) {"Value created"} 
