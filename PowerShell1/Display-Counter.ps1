<#
.SYNOPSIS
    This script is counts down from 3 minutes and displays the time remaining.
.DESCRIPTION
    This script is an entry to the scripting games 2009.
.NOTES
    File Name  : Display-Counter.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
.EXAMPLE
    Left as an exercise for the reader.
#>

# First helper function to display the time remaining
function display-time {
param ($timetodisplay)
# clear the screen
cls

# now create a timespan object from number of seconds
$display = New-Object System.TimeSpan 0,0,$timetodisplay

# Get minutes and seconds
$min=$display.minutes
$sec=$display.seconds

# Now work out "second" vs "seconds" and minutes
if ($min -gt 1 -or $min -eq 0){$mintag="Minutes"}
          else {$mintag="Minute"}
if ($sec -gt 1 -or $sec -eq 0) {$sectag="seconds"}
                          else {$sectag="second"}

# now print out minute(s) and second(s) remainign
"{0} {1}, {2} {3}" -f $min,$mintag,$sec,$sectag
}

# start of script

#define time in seconds (3 minutes or 180 seconds)
$time = 180  

# define fudgefactor - number of miliseconds to wait to avoid 
# timing errors in start-sleep etc.
$fudgefactor = 5
$interval    = 1000 - $fudgefactor

# start time
$starttime=Get-Date
do {
display-time $time

Start-Sleep -Milliseconds $interval
$time--
} while ($time -gt 0)
cls
"Done - counted down to $time seconds"

# Now calculate how long it really took
$finishtime=Get-Date
"Script took this long:"
$finishtime-$starttime
# end of script