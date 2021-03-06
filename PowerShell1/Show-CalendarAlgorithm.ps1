<#
.SYNOPSIS
    This script re-implements an MSDN Sample showing the 
    CalendarAlgorithmType enumeration. 
.DESCRIPTION
    This script creates there calendars and displays 
    algorithm type,
.NOTES
    File Name  : Show-CalendarAlgorithm.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/system.globalization.calendaralgorithmtype.aspx
.EXAMPLE
    
#>

# Helper function
Function Display{
Param ([System.Globalization.Calendar] $c)
$name = $c.ToString().PadRight(50, '.')
"{0} {1}" -f $name, $c.AlgorithmType
}

## Start of script

# Create three new calendars
$grCal = new-object System.Globalization.GregorianCalendar
$hiCal = new-object System.Globalization.HijriCalendar
$jaCal = new-object System.Globalization.JapaneseLunisolarCalendar

# Display them
Display($grCal);
Display($hiCal);
Display($jaCal);