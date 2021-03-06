<#
.SYNOPSIS
    This script converts time between two timezones.
.DESCRIPTION
    This script creates a system.datetime object, then shows that time
    converted from Hawaian to Local time.
.NOTES
    File Name  : Convert-Time.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/bb382770.aspx
.EXAMPLE
    PS C:\foo> .\System.DateTime\Convert-Time.ps1
    01/02/2007 08:00:00 Hawaiian Daylight Time is 01/02/2007 18:00:00 local time.
#>

# Create date time object for 2007.
$HwTime = new-object System.DateTime 2007, 02, 01, 08, 00, 00`

# Now get the Hawaiian Standard Time and convert $HwTime to local time
# and catch any exceptions
try
{
$HwZone = [System.TimeZoneInfo]::FindSystemTimeZoneById("Hawaiian Standard Time")
"{0} {1} is {2} local time." -f $HwTime, 
                                $HwZone.DaylightName,
                                [System.TimeZoneInfo]::ConvertTime($HwTime, $HwZone,[System.TimeZoneInfo]::Local)
}
catch [System.TimeZoneNotFoundException]
{
   "The registry does not define the Hawaiian Standard Time zone."
}                           
catch [System.InvalidTimeZoneException]
{
   "Registry data on the Hawaiian STandard Time zone has been corrupted"
}
# End of script