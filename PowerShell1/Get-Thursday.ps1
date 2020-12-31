<#
.SYNOPSIS
    This script checks of a particular date in the past was a Thurday.
.DESCRIPTION
    This script creates a DateTime object set for 1st May, 2003. The
    script then check to see if that day is a Thursday then displays the day of
    week for that date (which is a Thursday). This script is a copy of the MSDN sample,
    written in PowerShell.	
.NOTES
    File Name  : Get-Thursday.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2009/08/get-thursday.html
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.dayofweek(VS.71).aspx
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.DateTime\get-thursday.ps1'
    Is Thursday the day of the week for 5/1/2003?: True
    The day of the week for 5/1/2003 is Thursday.
#>
 
##
# Start of script
##
 
# Create a DateTime for the first of May, 2003.
$dt = New-Object System.DateTime 2003, 5, 1
 
# Now - is it Thursday?
"Is Thursday the day of the week for {0:d}?: {1}" -f $dt,($dt.DayOfWeek -eq [system.DayOfWeek]::Thursday)
"The day of the week for {0:d} is {1}." -f $dt, $dt.DayOfWeek
# End of Script