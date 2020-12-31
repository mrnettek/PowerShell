<#
.SYNOPSIS
    This script manipulates a time using TimeZone info methods.
.DESCRIPTION
    This script reimplements an MSDN sample using PowerShell. The script first
    creates a DateTime object then it converts it to Universal, UTC, Pacific and 'local' time.	
.NOTES
    File Name  : Convert-Date.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.timezoneinfo.local.aspx
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.TimeZoneINfo\Convert-date.ps
    Date           : 3/21/2006 02:00:00 AM
    Local Time zone: GMT Standard Time
     In Universal time: 3/21/2006 02:00:00 AM
     In UTC           : 3/21/2006 02:00:00 AM
     In Local TZ:     : 3/21/2006 02:00:00 AM
     In Pacific TZ    : 3/21/2006 10:00:00 AM
#>
# Create date object
$date1 = New-Object System.DateTime 2006, 3, 21, 2, 0, 0

# Display date and local time zone then show that time in other time zones
"Date           : {0}" -f $date1
"Local Time zone: {0}" -f  ([System.TimeZoneInfo]::Local).id
" In Universal time: {0}" -f $date1.ToUniversalTime()
" In UTC           : {0}" -f [System.TimeZoneInfo]::ConvertTimeToUtc($date1)
" In Local TZ:     : {0}" -f [System.TimeZoneInfo]::ConvertTimeToUtc($date1, ([System.TimeZoneInfo]::Local))
$tz = [System.TimeZoneInfo]::FindSystemTimeZoneById("Pacific Standard Time");  
" In Pacific TZ    : {0}" -f [System.TimeZoneInfo]::ConvertTimeToUtc($date1, $tz)