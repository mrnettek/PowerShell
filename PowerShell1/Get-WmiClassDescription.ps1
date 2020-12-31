<#
.SYNOPSIS
    This script gets and displays the description of a WMI Class. 
.DESCRIPTION
    This script takes a WMI Class name as a parameter. The script
    then gets the class's description from the CIM repository and
    displays it. Based on a PowerShell.Com tip of the day!
.NOTES
    File Name  : Get-WmiClassDescription.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\Get-WmiClassDescription.ps1
    Description for WMI Class Win32_ComputerSystem:
    The Win32_ComputerSystem class represents a computer system operating in a Win32 environment.
.EXAMPLE
    PSH [C:\foo]: . \Get-WmiClassDescription.ps1 win32_bios
    Description for WMI Class win32_bios:
    The Win32_BIOS class represents the attributes of the computer system's basic input/output services
    (BIOS) that are installed on the computer.
#>

param (
[string] $WMIClassName = "Win32_ComputerSystem"
)

# Get WMI class from class name
$class = [wmiclass]$wmiclassname

# Now get then print the class description
# First use ammended qualifiers to get description
$class.psbase.Options.UseAmendedQualifiers = $true
"Description for WMI Class {0}:"  -f $WmiClassName
($class.psbase.qualifiers["description"]).Value