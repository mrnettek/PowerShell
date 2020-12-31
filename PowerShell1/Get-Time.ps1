<#
.SYNOPSIS
    This script converts time to different time zones. 
.DESCRIPTION
    This script re-implements an MSDN sample using PowerShell
.NOTES
    File Name  : Get-Time.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2010/08/get-time.html
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.timezoneinfo.findsystemtimezonebyid.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-Time.ps1
    Time in GMT Daylight Time zone: 8/29/2010 11:40:50 AM
       UTC Time: 8/29/2010 10:40:50 AM
    Time in Tokyo Daylight Time zone: 8/29/2010 07:40:50 PM
       UTC Time: 8/29/2010 10:40:50 AM
#>

# Get local time
$ThisTime = [System.DateTime]::Now

if ([System.TimeZoneInfo]::Local.IsDaylightSavingTime($ThisTime)) {
    $Tzn = [System.TimeZoneInfo]::Local.DaylightName }
else {
    $Tzn = [System.TimeZoneInfo]::Local.StandardName
}
# Display local Time
"Time in {0} zone: {1}" -f $Tzn, $ThisTime
"   UTC Time: {0}" -f [System.TimeZoneInfo]::ConvertTimeToUtc($ThisTime, [TimeZoneInfo]::Local)

# Get Tokyo Standard Time zone
$Tst = [system.TimeZoneInfo]::FindSystemTimeZoneById("Tokyo Standard Time")
$TstTime = [system.TimeZoneInfo]::ConvertTime($ThisTime, [TimeZoneInfo]::local, $Tst)
$Tstzn = if ( [System.TimeZoneInfo]::Local.IsDaylightSavingTime($TstTime)) {
         $Tst.DaylightName} else {$Tst.StandardName}

# Display Tokyo Time Zone
"Time in {0} zone: {1}" -f $Tstzn,$TstTime
"   UTC Time: {0}" -f [System.TimeZoneInfo]::ConvertTimeToUtc($TstTime, $Tst)