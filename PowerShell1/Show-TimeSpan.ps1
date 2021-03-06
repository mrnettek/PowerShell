<#
.SYNOPSIS
    This script, a re-implementation of an MSDN sample, shows
    details of a timespan object
.DESCRIPTION
    This script re-implements a simple MSDN script that creates a 
    timespan object and displays its properties.
.NOTES
    File Name  : Show-TimeSpan.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/system.timespan.aspx
.EXAMPLE
     Psh> .\Show-TimeSpan.ps1
    8/18/2010 1:30:30 PM - 1/1/2010 8:00:15 AM = 229.05:30:15
       Value of Days Component:                             229
       Total Number of Days:                   229.229340277778
       Value of Hours Component:                              5
       Total Number of Hours:                  5501.50416666667
       Value of Minutes Component:                           30
       Total Number of Minutes:                       330090.25
       Value of Seconds Component:                           15
       Total Number of Seconds:                      19,805,415
       Value of Milliseconds Component:                       0
       Total Number of Milliseconds:             19,805,415,000
       Ticks:                               198,054,150,000,000
#>

# Define two dates
$date1 = new-object system.datetime 2010, 1, 1, 8, 0, 15
$date2 = new-object system.datetime 2010, 8, 18, 13, 30, 30

# Create a time Interval
$interval = New-Timespan -start $date1 -end $date2

#Display the interval
"{0} - {1} = {2}" -f $date2, $date1, $interval.ToString()

# Display individual properties of the resulting TimeSpan object.
"   {0,-35} {1,20}" -f "Value of Days Component:", $interval.Days
"   {0,-35} {1,20}" -f "Total Number of Days:", $interval.TotalDays
"   {0,-35} {1,20}" -f "Value of Hours Component:", $interval.Hours
"   {0,-35} {1,20}" -f "Total Number of Hours:", $interval.TotalHours
"   {0,-35} {1,20}" -f "Value of Minutes Component:", $interval.Minutes
"   {0,-35} {1,20}" -f "Total Number of Minutes:", $interval.TotalMinutes
"   {0,-35} {1,20:N0}" -f "Value of Seconds Component:", $interval.Seconds
"   {0,-35} {1,20:N0}" -f "Total Number of Seconds:", $interval.TotalSeconds
"   {0,-35} {1,20:N0}" -f "Value of Milliseconds Component:", $interval.Milliseconds
"   {0,-35} {1,20:N0}" -f "Total Number of Milliseconds:", $interval.TotalMilliseconds
"   {0,-35} {1,20:N0}" -f "Ticks:", $interval.Ticks