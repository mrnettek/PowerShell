<#
.SYNOPSIS
    This script gets a registry value using WMI.
.DESCRIPTION
    This script uses WMI to get then display a registry value, using 
    the SteRegProv class and the GetDWORDValue static method.
    This is a re-write of a VB Sample Script
.NOTES
    File Name  : Get-WmiRegDword.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/aa394600%28VS.85%29.aspx
.EXAMPLE
    Psh[C:\foo]>Get-WmiRegDword.ps1
    Key created
#>

# Define Constants
$HKEY_CURRENT_USER =2147483649
$computer ='.'

# Get Class to call static methods on
$reg = [WMIClass]"ROOT\DEFAULT:StdRegProv"

# Define key/value to get
$Key = "Console"
$Value = "HistoryBufferSize"

# Get Value of buffer and display
$results = $reg.GetDWORDValue($HKEY_CURRENT_USER, $Key, $value)
"Current History Buffer Size: {0}" -f $results.uValue
