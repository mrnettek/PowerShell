<#
.SYNOPSIS
    This script displays the static fields of a stopwatch object.
.DESCRIPTION
    This script first displays the two static fields in the stop watch object: Frequency,
    and IsHighResolution. Details of these are on MSDN.
.NOTES
    File Name  : Get-StopWatchFields.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.diagnostics.stopwatch_fields.aspx
.EXAMPLE
    PSH [C:\foo]: .Get-StopWatchFields.ps1'
    Frequency:         14,318,180
    IsHighResolution:  True
#>
 
##
#  start of script
##
 
# Display the static fields
"Frequency:         {0}" -f [system.Diagnostics.Stopwatch]::Frequency.ToString("0,000")
"IsHighResolution:  {0}" -f [system.Diagnostics.Stopwatch]::IsHighResolution
# End of script