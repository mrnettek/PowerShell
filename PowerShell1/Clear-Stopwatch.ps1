<#
.SYNOPSIS
    This script displays the use of the Reset method in a StopWatch object.
.DESCRIPTION
    This script calls the StartNew static method to create and start a new 
    stopwatch object, and displays the current values for the stop watch. The 
    stopwatch is then reset using the Reset method, then the current values are displayed.  At completion,
    the stopwatch is stopped and all counters are zero.
.NOTES
    File Name  : Clear-Stopwatch.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.diagnostics.stopwatch.reset.aspx
.EXAMPLE
    PSH [C:\foo]: .\Clear-Stopwatch.ps1
    StopWatch object before reset:
    IsRunning           : True
    Elapsed             : 00:00:00.0039085
    ElapsedMilliseconds : 3
    ElapsedTicks        : 57153
	StopWatch object after reset:
    IsRunning           : False
    Elapsed             : 00:00:00
    ElapsedMilliseconds : 0
    ElapsedTicks        : 0
#>

##
#  Begin script
##
# Create a stop watch object and auto start it

$sw = [system.Diagnostics.Stopwatch]::StartNew()

# Now get current elapsed time:
"StopWatch object before reset:"
$sw | fl *

# Now reset
$sw.reset()

# Observe Results
"StopWatch object after reset:"
$sw | fl *
# End script