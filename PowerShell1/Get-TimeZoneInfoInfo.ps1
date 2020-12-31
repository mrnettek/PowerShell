<#
.SYNOPSIS
    This script displays/Uses TimeZoneInfo properties 
.DESCRIPTION
    This script displays the use of all the TimeZoneInfo Properties.
.NOTES
    File Name  : Get-TimeZoneInfoInfo.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.timezoneinfo_properties.aspx 
.EXAMPLE
    PSH [C:\foo]: .Get-TimeZoneInfoInfo.ps1'
    Time Zone: (GMT) Greenwich Mean Time : Dublin, Edinburgh, Lisbon, London
      Time zone is 0 hours 0 minutes later than Coordinated Universal Time.
      Current time is 12:22 PM on 8/28/2010 GMT Daylight Time
      Timezone id              : GMT Standard Time
      Supports Daylight Saving : True
      Daylight Saving Zone Name: GMT Daylight Time
 
    Time Zone: (GMT+04:30) Kabul
      Time zone is 4 hours 30 minutes later than Coordinated Universal Time.
      Current time is 12:22 PM on 8/28/2010 Afghanistan Standard Time
      Timezone id              : Afghanistan Standard Time
      Supports Daylight Saving : False
      Daylight Saving Zone Name: Afghanistan Daylight Time
 
    Time Zone: UTC
      Time zone is 0 hours 0 minutes later than Coordinated Universal Time.
      Current time is 12:22 PM on 8/28/2010 UTC
      Timezone id              : UTC
      Supports Daylight Saving : False
      Daylight Saving Zone Name: UTC
#>
# Display Information About Time Zones

# Get current date
$Datenow = Get-Date

# Display info re Local Time Zone
$LocalZone = [System.TimeZoneInfo]::Local
$t1 = [system.Math]::Abs($LocalZone.BaseUtcOffset.Hours)
$t2 = [System.Math]::Abs($LocalZone.BaseUtcOffset.Minutes) 
$t3 = if ($LocalZone.BaseUtcOffset -ge  [System.Timespan]::Zero) {"later"} else {"earlier"}
$t4 = if ($LocalZone.IsdaylightSavingTime($datenow)) {$Localzone.DaylightName} else {$Localzone.Standardname}
# Display information
"Time Zone: {0}" -f $Localzone.Displayname
"  Time zone is {0} hours {1} minutes {2} than Coordinated Universal Time." -f   $t1,$t2, $t3
"  Current time is {0:t} on {0:d} {1}" -f $datenow,$t4
"  Timezone id              : {0}" -f $LocalZone.Id
"  Supports Daylight Saving : {0}" -f $LocalZone.SupportsDaylightSavingTime
"  Daylight Saving Zone Name: {0}" -f $Localzone.DaylightName
""

# Get Kabul Time
$Kt = [system.TimeZoneInfo]::GetSystemTimeZones()  | ? {$_.id -match "Afghanistan Standard Time"}
$tz = $kt.Displayname
$t1 = [system.Math]::Abs($kt.BaseUtcOffset.Hours)
$t2 = [System.Math]::Abs($kt.BaseUtcOffset.Minutes) 
$t3 = if ($kt.BaseUtcOffset -ge  [System.timespan]::Zero) {"later"} else {"earlier"}
$t4 = if ($Kt.IsdaylightSavingTime($datenow)) {$Kt.DaylightName} else {$Kt.Standardname}

# Display information
"Time Zone: {0}" -f $Kt.Displayname
"  Time zone is {0} hours {1} minutes {2} than Coordinated Universal Time." -f   $t1,$t2,$t3
"  Current time is {0:t} on {0:d} {1}" -f $datenow,$t4
"  Timezone id              : {0}" -f $Kt.Id
"  Supports Daylight Saving : {0}" -f $Kt.SupportsDaylightSavingTime
"  Daylight Saving Zone Name: {0}" -f $Kt.DaylightName
""

# Display Information regarding UTC
$UtcZone = [System.TimeZoneInfo]::UTC
$t1 = [system.Math]::Abs($UtcZone.BaseUtcOffset.Hours)
$t2 = [System.Math]::Abs($UtcZone.BaseUtcOffset.Minutes) 
$t3 = if ($UtcZone.BaseUtcOffset -ge  [System.Timespan]::Zero) {"later"} else {"earlier"}
$t4 = if ($UtcZone.IsdaylightSavingTime($datenow)) {$Utczone.DaylightName} else {$UtcZone.Standardname}

# Display information
"Time Zone: {0}" -f $UtcZone.Displayname
"  Time zone is {0} hours {1} minutes {2} than Coordinated Universal Time." -f   $t1,$t2,$t3
"  Current time is {0:t} on {0:d} {1}" -f $Datenow,$t4
"  Timezone id              : {0}" -f $UtcZone.Id
"  Supports Daylight Saving : {0}" -f $UtcZone.SupportsDaylightSavingTime
"  Daylight Saving Zone Name: {0}" -f $UtcZone.DaylightName
