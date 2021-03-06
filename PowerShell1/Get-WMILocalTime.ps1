<#
.SYNOPSIS
  Gets time from WMI and displays it  
.DESCRIPTION
   This script gets Win32_LocalTime and then displays 
   the details.
.NOTES
    File Name  : Get-WMILocalTime.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    [ps] c:\foo> .\Get-WMILocaltimeps1
    Day          : 26
    Day Of Week  : 1
    Hour         : 20
    Minute       : 59
    Month        : 1
    Quarter      : 1
    Second       : 53
    Week In Month: 5
    Year         : 2009
#>

###
# Start of Script
##

# Speficy computer and get Local Time
$Computer = "."
$times = Get-WmiObject Win32_LocalTime -computer $computer

# Now display the result

Foreach ($time in $times) {
"Day          : {0}"  -f $Time.Day
"Day Of Week  : {0}"  -f $Time.DayOfWeek
"Hour         : {0}"  -f $Time.Hour
"Minute       : {0}"  -f $Time.Minute
"Month        : {0}"  -f $Time.Month
"Quarter      : {0}"  -f $Time.Quarter
"Second       : {0}"  -f $time.Second 
"Week In Month: {0}"  -f $Time.WeekInMonth 
"Year         : {0}"  -f $Time.Year 
}
# End of Script
