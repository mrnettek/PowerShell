<#
.SYNOPSIS
    This script creates removes registry key using WMI.
.DESCRIPTION
    This script uses WMI to get remove registry key. 
    This script deletes the key and everything below
    it in the registry - use carefully!
.NOTES
    File Name  : Remove-WmiRegistryKey.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/aa394600%28VS.85%29.aspx
.EXAMPLE
    Psh[C:\foo]>New-WMIRegistryKey.ps1
    Key removed
#>

# Define Constants
$HKEY_Local_Machine =2147483650 
$computer ='.'

# Get Class to call static methods on
$reg = [WMIClass]"ROOT\DEFAULT:StdRegProv"

# Define key to create
$Key     = "SOFTWARE\NewKey"

# Create key and display reslts
$results   = $reg.DeleteKey($HKEY_LOCAL_MACHINE, $Key)
If ($results.Returnvalue -eq 0) {"Key Removed"} 
