<#
.SYNOPSIS
    This script displays details of a Calendar in PowerShell
.DESCRIPTION
    This script shows the various aspects of this calendar including key properties,
    fields and selected methods.
.NOTES
    File Name  : Get-Calendar.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
        http://msdn.microsoft.com/en-us/library/system.globalization.umalquracalendar.aspx
.EXAMPLE
#>    

# Helper Function
Function DisplayValues {
param ($MyCal, $MyDT )

"   Era:            {0}" -f $MyCal.GetEra($MyDT) 
"   Year:           {0}" -f $MyCal.GetYear($MyDT)
"   Is Leap Year?   {0}" -f $MyCal.IsLeapYear($MyCal.GetYear($MyDT))
"   Days In Year:   {0}" -f $MyCal.GetDaysInYear($MyCal.GetYear($MyDT))
"   Month:          {0}" -f $MyCal.GetMonth($MyDT)
"   Months in Year: {0}" -f $MyCal.GetMonthsInYear($MyCal.GetYear($MyDT))
"   Days in Month:  {0}" -f $MyCal.GetDaysInMonth($MyCal.GetYear($MyDT), $MyDT.Month)
"   Leap Month:     {0}" -f $MyCal.GetLeapMonth($MyCal.GetYear($MyDT))
"   DayOfYear:      {0}" -f $MyCal.GetDayOfYear($MyDT)
"   DayOfMonth:     {0}" -f $MyCal.GetDayOfMonth($MyDT)
"   DayOfWeek:      {0}" -f $MyCal.GetDayOfWeek($MyDT)
""
}
 	  
# Set a DateTime to April 3, 2002 of a calendar.
 $MyDT = New-Object System.DateTime 2002, 4, 3, (New-Object System.Globalization.GregorianCalendar)
  
# Create an instance of the Calendar.
$MyCal = New-Object System.Globalization.Calendar
# Display properties of the calendar
"Calendar"
"Algorithm Type          : {0}" -f $MyCal.AlgorithmType
"Eras in Calendar        : {0}" -f $MyCal.Eras.count
"Is read only?           : {0}" -f $MyCal.IsReadOnly
"Max Supported Date/Time : {0}" -f $MyCal.MaxSupportedDateTime
"Min Supported Date/Time : {0}" -f $MyCal.MinSupportedDateTime
"Two Digit Year Max      : {0}" -f $MyCal.TwoDigitYearMax
""
 
# Display the values of the DateTime.
 "April 3, 2002 of the Gregorian calendar equals the following in the Calendar:" 
DisplayValues $MyCal $MyDT 

# Adds two years and ten months and one Day.
$MyDT = $MyCal.AddYears( $MyDT, 2 )
$MyDT = $MyCal.AddMonths($MyDT, 10 )
$MyDT = $MyCal.AddDays($MyDT, 1 )
 
# Display the values of the DateTime.
"After adding two years and ten months and one day:"
DisplayValues $MyCal $MyDT
