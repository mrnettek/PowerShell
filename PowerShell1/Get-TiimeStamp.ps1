<#
.SYNOPSIS
    This script displays the timestamp value of a stopwach object.
.DESCRIPTION
    This script first calls the GetTimeStamp static method, then displays
	the result nicely.
.NOTES
    File Name  : Get-TimeStamp.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.diagnostics.stopwatch.gettimestamp.aspx
.EXAMPLE
    PSH [C:\foo]: .\GetTimeStamp.ps1
    37,338,460,816,641
#>

# Get TimeStamp
$TimeStamp = [system.Diagnostics.Stopwatch]::GetTimestamp()
 
# Now display it nicely
$Timestamp.ToString("0,000)"