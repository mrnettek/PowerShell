<# 
.SYNOPSIS 
    Demonstrates use of the System.Diagnostics.Stopwatch .NET Class   
.DESCRIPTION 
    This script is a community content MSDN sample,using PowerShell 
.NOTES 
    File Name  : Get-ElapsedTime
    Author     : Thomas Lee - tfl@psp.co.uk 
    Requires   : PowerShell V2 CTP3 
.LINK 
    Sample posted to: 
    http://pshscripts.blogspot.com 
    Original MSDN sample at: 
    http://msdn.microsoft.com/en-us/library/system.diagnostics.stopwatch.aspx
.EXAMPLE 
    PSH [C:\foo]: .\get-stopwatch.ps1'
    Runtime = 00:00:10.03

#> 

##
# start of script
##

# Create a new stopwatch objecty
$StopWatch = New-Object system.Diagnostics.Stopwatch
 
# Start the stop watch
$stopWatch.Start()

# Go to sleep for approx 10 seconds
[system.threading.Thread]::Sleep(10000)

# Now after sleep, stop the watch
$StopWatch.Stop();

# Get the elapsed time as a TimeSpan value.
$ts = $StopWatch.Elapsed

# Format and display the TimeSpan value.
$ElapsedTime = [system.String]::Format("{0:00}:{1:00}:{2:00}.{3:00}",
           $ts.Hours, $ts.Minutes, $ts.Seconds,
            $ts.Milliseconds / 10);
"Runtime = $elapsedTime"