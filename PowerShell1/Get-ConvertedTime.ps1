<#
.SYNOPSIS
    This script converts time using ConvertTime method. 
.DESCRIPTION
    This script re-implements an MSDN sample.
.NOTES
    File Name  : Get-ConvertedTime.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2010/08/get-convertedtimeps1.html
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/bb382835.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-ConvertedTime.ps1
    Local time zone: (GMT) Greenwich Mean Time : Dublin, Edinburgh, Lisbon, London

    Converted 1/1/2010 12:01:00 AM Unspecified to 12/31/2009 07:01:00 PM
    Converted 1/1/2010 12:01:00 AM Utc to 12/31/2009 07:01:00 PM
    Converted 1/1/2010 12:01:00 AM Local to 12/31/2009 07:01:00 PM
    Converted 11/6/2010 11:30:00 PM Unspecified to 11/6/2010 07:30:00 PM
    Converted 11/7/2010 02:30:00 AM Unspecified to 11/6/2010 10:30:00 PM
#>
#Create an array of times to convert
[DateTime[]] $times = (New-Object system.dateTime 2010, 1, 1, 0, 1, 0), 
                      (New-Object system.DateTime(2010, 1, 1, 0, 1, 0, [System.DateTimeKind]::Utc)), 
                      (New-Object system.dateTime(2010, 1, 1, 0, 1, 0, [System.DateTimeKind]::Local)),                            
                      (New-Object system.DateTime(2010, 11, 6, 23, 30, 0)),
                      (New-Object system.DateTime(2010, 11, 7, 2, 30, 0) );

# Retrieve the time zone for Eastern Standard Time (U.S. and Canada).
try {
  $Est = [System.TimeZoneInfo]::FindSystemTimeZoneById("Eastern Standard Time");
}
catch {
  "Unable to retrieve the Eastern Standard time zone."
  return;
}

#  Display the current time zone name.
"Local time zone: {0}`n" -f [system.TimeZoneInfo]::Local.DisplayName

# Convert and display each time in the $times array
 foreach ($timeToConvert in $times)  {
  $TargetTime = [System.TimeZoneInfo]::ConvertTime($TimeToConvert, $Est)
  "Converted {0} {1} to {2}" -f $timeToConvert,$timeToConvert.Kind, $targetTime
 }                        