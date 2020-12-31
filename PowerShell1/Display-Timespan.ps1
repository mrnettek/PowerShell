<#
.SYNOPSIS
    Creates timespan objects and displays properties for each    
.DESCRIPTION
    This script creates time span objects then prints out
	the properies of each one.
.NOTES
    File Name  : Display-TimeSpan.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\Display-Timespan.ps1
    This example of the TimeSpan class properties
    generates the following output. It creates
    several TimeSpan objects and displays the values
    of the TimeSpan properties for each

    TimeSpan( 1 )
    Interval =      00:00:00.0000001
    Days               0       TotalDays          1.15740740740741E-12
    Hours              0       TotalHours         2.77777777777778E-11
    Minutes            0       TotalMinutes       1.66666666666667E-09
    Seconds            0       TotalSeconds                      1E-07
    Milliseconds       0       TotalMilliseconds                0.0001
                               Ticks                                 1
    TimeSpan( 111222333444555 )
    Interval =  128.17:30:33.3444555
    Days             128       TotalDays              128.729552597865
    Hours             17       TotalHours             3089.50926234875
    Minutes           30       TotalMinutes           185370.555740925
    Seconds           33       TotalSeconds           11122233.3444555
    Milliseconds     344       TotalMilliseconds      11122233344.4555
                               Ticks                   111222333444555

    TimeSpan( 10, 20, 30, 40, 50 )
    Interval =   10.20:30:40.0500000
    Days              10       TotalDays              10.8546302083333
    Hours             20       TotalHours                   260.511125
    Minutes           30       TotalMinutes                 15630.6675
    Seconds           40       TotalSeconds                  937840.05
    Milliseconds      50       TotalMilliseconds             937840050
                               Ticks                     9378400500000
    TimeSpan( 1111, 2222, 3333, 4444, 5555 )
    Interval = 1205.22:47:09.5550000
    Days            1205       TotalDays              1205.94941614583
    Hours             22       TotalHours                28942.7859875
    Minutes           47       TotalMinutes              1736567.15925
    Seconds            9       TotalSeconds              104194029.555
    Milliseconds     555       TotalMilliseconds          104194029555
                               Ticks                  1041940295550000
    FromDays( 20.84745602 )
    Interval =   20.20:20:20.1980000
    Days              20       TotalDays              20.8474559953704
    Hours             20       TotalHours             500.338943888889
    Minutes           20       TotalMinutes           30020.3366333333
    Seconds           20       TotalSeconds                1801220.198
    Milliseconds     198       TotalMilliseconds            1801220198
                               Ticks                    18012201980000

#>

## 
#  Start of Script
##

# Constant
$HeaderFmt = "`n{0, -45}"
$DataFmt = "{0,-12}{1,8}       {2,-18}{3,21}"
 
# Helper function 
function ShowTimeSpanProperties {
param ([System.TimeSpan] $Interval = 1)
  
# Display the properties of the TimeSpan parameter.

"Interval = {0,21}"   -f $interval
"$DataFmt" -f  "Days",         $interval.Days,         "TotalDays",         $interval.TotalDays
"$DataFmt"  -f "Hours",        $interval.Hours,        "TotalHours",        $interval.TotalHours
"$dataFmt"  -f "Minutes",      $interval.Minutes,      "TotalMinutes",      $interval.TotalMinutes
"$DataFmt"  -f "Seconds",      $interval.Seconds,      "TotalSeconds",      $interval.TotalSeconds
"$DataFmt"  -f "Milliseconds", $interval.Milliseconds, "TotalMilliseconds", $interval.TotalMilliseconds
"$DataFmt"  -f $null,          $null,                  "Ticks",             $interval.Ticks
} 

# Start of main script
# Create and display a comment
$comment = @"
This example of the TimeSpan class properties 
generates the following output. It creates 
several TimeSpan objects and displays the values 
of the TimeSpan properties for each
"@
$comment
 
# Create and display a TimeSpan value of 1 tick.
$ts = [system.TimeSpan] 1
"$HeaderFmt" -f "TimeSpan( 1 )"
ShowTimeSpanProperties($ts)
 
# Create a TimeSpan value with a large number of ticks.
$ts = [System.TimeSpan] 111222333444555
"$HeaderFmt"  -f "TimeSpan( 111222333444555 )" 
ShowTimeSpanProperties($ts)

# This TimeSpan has all fields specified.
$ts = New-Object  System.TimeSpan 10, 20, 30, 40, 50
"$HeaderFmt" -f "TimeSpan( 10, 20, 30, 40, 50 )"
ShowTimeSpanProperties($ts)

# This TimeSpan has all fields overflowing.
$ts = New-Object System.Timespan 1111, 2222, 3333, 4444, 5555 
"$HeaderFmt" -f "TimeSpan( 1111, 2222, 3333, 4444, 5555 )"
ShowTimeSpanProperties($ts)

# This TimeSpan is based on a number of days.
$ts = [system.TimeSpan] ([system.TimeSpan]::FromDays(20.8474560))
"$headerFmt"  -f "FromDays( 20.84745602 )" 

ShowTimeSpanProperties($ts)

# End of script