<#
.SYNOPSIS
    This script displays details of a Persian Calender in PowerShell
.DESCRIPTION
    This script re-implements an MSDN C# sample.
.NOTES
    File Name  : Get-PersianCalendar.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://pshscripts.blogspot.com/2010/09/get-persiancalendarps1.html
    MSDN Sample posted at:
        http://msdn.microsoft.com/en-us/library/system.globalization.persiancalendar.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-PersianCalendar.ps1
    ................. Today ..........................
    Today is:
       Wednesday, 9/1/2010 03:25:17 PM in the Gregorian calendar.
       Wednesday, 6/10/1389 15:25:17 in the Persian calendar.
    ............... Fields ............................
    PersianEra = 1
    ............... Properties ........................
    Eras:
     era = 1
    Gregorian Date Range Supported by the Persian Calendar:
       From 3/21/0622 12:00:00 AM
       To   12/31/9999 11:59:59 PM
    TwoDigitYearMax = 99
    ............ Selected Methods ......................
    GetDayOfYear: day       = 165
    GetDaysInMonth: days    = 30
    GetDaysInYear: days     = 366
    GetLeapMonth:  month    = 0
    GetMonthsInYear: months = 12
    IsLeapDay:              = False
    IsLeapMonth:            = False
    IsLeapYear: 1370 is a leap year = True
    ToFourDigitYear:
      if TwoDigitYearMax = 99, ToFourDigitYear(99) = 99
      if TwoDigitYearMax = 2010, ToFourDigitYear(99) = 1999
#>

# Get today's date.
"................. Today .........................."
$Jc       = new-object system.Globalization.PersianCalendar
$ThisDate = [System.DateTime]::Now

# Display the current date using the Gregorian and Persian calendars.
"Today is:"
"   {0:dddd}, {0} in the Gregorian calendar." -f $ThisDate
"   {0}, {1}/{2}/{3} {4}:{5}:{6} in the Persian calendar." -f $jc.GetDayOfWeek($thisDate), 
                        $jc.GetMonth($thisDate), 
                        $jc.GetDayOfMonth($thisDate), 
                        $jc.GetYear($thisDate), 
                        $jc.GetHour($thisDate), 
                        $jc.GetMinute($thisDate), 
                        $jc.GetSecond($thisDate)

# Fields
"............... Fields ............................"
"PersianEra = {0}" -f [System.Globalization.PersianCalendar]::PersianEra

# Properties
"............... Properties ........................"
"Eras:"
foreach ($era in $jc.Eras){
         " era = {0}" -f $era
}
"Gregorian Date Range Supported by the Persian Calendar:"
"   From {0:G}" -f $jc.MinSupportedDateTime
"   To   {0:G}" -f $jc.MaxSupportedDateTime
"TwoDigitYearMax = {0}" -f $jc.TwoDigitYearMax

# Methods
"............ Selected Methods ......................"
"GetDayOfYear: day       = {0}"    -f $jc.GetDayOfYear($thisDate)
"GetDaysInMonth: days    = {0}" -f $jc.GetDaysInMonth($thisDate.Year, $thisDate.Month, 
                                   [System.Globalization.PersianCalendar]::PersianEra)
"GetDaysInYear: days     = {0}" -f $jc.GetDaysInYear($thisDate.Year, [System.Globalization.PersianCalendar]::PersianEra)
"GetLeapMonth:  month    = {0}" -f $jc.GetLeapMonth($thisDate.Year, [System.Globalization.PersianCalendar]::PersianEra)
"GetMonthsInYear: months = {0}" -f $jc.GetMonthsInYear($thisDate.Year,[System.Globalization.PersianCalendar]::PersianEra)
"IsLeapDay:              = {0}" -f $jc.IsLeapDay($thisDate.Year, $thisDate.Month, $thisDate.Day, 
                        [System.Globalization.PersianCalendar]::PersianEra)
"IsLeapMonth:            = {0}" -f $jc.IsLeapMonth($thisDate.Year, $thisDate.Month, 
                        [System.Globalization.PersianCalendar]::PersianEra)
"IsLeapYear: 1370 is a leap year = {0}" -f $jc.IsLeapYear(1370, [System.Globalization.PersianCalendar]::PersianEra)

# Get the 4-digit year for a year whose last two digits are 99. The 4-digit year 
# depends on the current value of the TwoDigitYearMax property.
"ToFourDigitYear:"
"  If TwoDigitYearMax = {0}, ToFourDigitYear(99) = {1}" -f $jc.TwoDigitYearMax, $jc.ToFourDigitYear(99)
$jc.TwoDigitYearMax = $thisDate.Year
"  If TwoDigitYearMax = {0}, ToFourDigitYear(99) = {1}" -f $jc.TwoDigitYearMax, $jc.ToFourDigitYear(99)

