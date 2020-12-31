<#
.SYNOPSIS
    Gets and displays time zone information via WMI
.DESCRIPTION
    This script uses the Win32_TimeZone class to obtain, then
	display time zone information for a computer.
	This script is a MSDN sample recoded in PowerShell
.NOTES
    File Name : Get-TimeZoneInfo.ps1
    Author : Thomas Lee - tfl@psp.co.uk
    Requires : PowerShell V2 CTP3
.LINK
    Script posted to:
    http://pshscripts.blogspot.com/2009/01/get-timezoneinfops1.html
    MSDN Sample at:
    http://msdn.microsoft.com/en-us/library/aa394590(VS.85).aspx
.EXAMPLE
    [ps] c:\foo> .\Get-TimeZoneInfo.ps1
	Time zone information on computer "Win7"
    Time Zone Description   : (UTC) Dublin, Edinburgh, Lisbon, London
    Daylight Name           : GMT Daylight Time
    Standard Name           : GMT Standard Time
#>

###
# Start of Script
##

# Get Time Zone on a computer
$Computer = "."
$timezone = Get-WMIObject -class Win32_TimeZone -ComputerName $computer

# Display details
if ($computer -eq ".") {$computer = Hostname}
"Time zone information on computer `"{0}`"" -f $computer
"Time Zone Description   : {0}" -f $timezone.Description
"Daylight Name           : {0}" -f $timezone.DaylightName
"Standard Name           : {0}" -f $timezone.StandardName
#End of Script