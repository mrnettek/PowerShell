<#
.SYNOPSIS
    Gets and displays properties of a stopwatch
.DESCRIPTION
    This script, written as an MSDN Sample, creates and starts a stop watch. The
	script stops the stopwatch, and displays the properties. To some degree, the 
	results indicate how long it takes to start and stop a stopwatch. Also, the
    runtimes vary if you run it multiple times.	
.NOTES
    File Name  : Get-StopWatchProperties.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
	Appears in -full 
.LINK
    Original sample posted at: 
        http://pshscripts.blogspot.com/2009/05/get-stopwatchpropertiesps1.html
	MSDN Sample posted at:
        http://msdn.microsoft.com/en-us/library/system.diagnostics.stopwatch_properties.aspx	
.EXAMPLE
    PSH [C:\foo]: .\Get-StopWatchProperties.PS1'
    IsRunning           : False
    Elapsed             : 00:00:00.0000162
    ElapsedMilliseconds : 0
    ElapsedTicks        : 233
 
#>
 
##
# Start of script
#
  
# Create and start a stopwatch
$StopWatch = New-Object System.Diagnostics.Stopwatch
 
# Now start, then stop, the stopwatch
$StopWatch.start()
$StopWatch.stop()
  
# Display results
$stopwatch | Format-List *
# End of Script