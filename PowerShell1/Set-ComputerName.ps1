<#
.SYNOPSIS
    This script renames a computer using WMI.
.DESCRIPTION
    This script uses the Rename method from Win32_OperatingSystem
    WMI class. 
    This is sample 5 from http://msdn.microsoft.com/en-us/library/aa394586
.NOTES
    File Name  : Set-ComputerName.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted tot:
        http://msdn.microsoft.com/en-us/library/aa394586%28VS.85%29.aspx
.EXAMPLE
    Left as an exercise for the Reader
#>
# This script takes two parameters, The computer to 
# rename and then the newname for that computer

param (
[$String] $NewName = 'NewName',
[$string] $Comp = "."
}

# Get computer object
$Computer = Get-WmiObject -Class Win32_ComputerSystem -ComputerName $comp

#Rename the Computer
$Return  = $Computer.Rename($NewName)

if ($return.ReturnValue -eq 0) {
   "Computer name is now: $NewName"
   " but you need to reboot first"
} else {
"  RenameFailed, return code: {0}" -f $return.ReturnValue
}

