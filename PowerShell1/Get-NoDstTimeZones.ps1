<#
.SYNOPSIS
    This script displays those time zones that do NOT support
    daylight savings time.
.DESCRIPTION
    This script uses .NET to get the time zones defined on a system
    then displays those that do not suport daylight savings time.
.NOTES
    File Name  : Get-NoDSTTimeZones.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
        http://msdn.microsoft.com/en-us/library/system.timezoneinfo.supportsdaylightsavingtime.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-NoDSTTimeZones.ps1'
    (UTC) Coordinated Universal Time
    (UTC) Monrovia, Reykjavik
    (UTC+01:00) West Central Africa
    ... {output snipped to save space}
#>

# Get Time Zones
$Zones = [System.TimeZoneInfo]::GetSystemTimeZones()

# For each zone, display name if the zone does not support dst
foreach($Zone in $Zones) {
   if (! $Zone.SupportsDaylightSavingTime) {$Zone.DisplayName}
}