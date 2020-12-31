<#
.SYNOPSIS
    This script displays details of a UmAlQura Calendar in PowerShell
.DESCRIPTION
    This script shows the various aspects of this calendar including key properties,
    fields and selected methods.
.NOTES
    File Name  : Get-UmAlQuraCalendar.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
        http://msdn.microsoft.com/en-us/library/system.globalization.umalquracalendar.aspx
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.Globalization\Get-UmAlQuraCalendar.ps1'
    Um Al Qura Calendar
    Algorithm Type          : LunarCalendar
    Eras in Calendar        : 1
    Is read only?           : False
    Max Supported Date/Time : 5/13/2029 11:59:59 PM
    Min Supported Date/Time : 4/30/1900 12:00:00 AM
    Two Digit Year Max      : 1451
 
    April 3, 2002 of the Gregorian calendar equals the following in the UmAlQura calendar:
       Era:            1
       Year:           1423
       Is Leap Year?   False
       Days In Year:   354
       Month:          1
       Months in Year: 12
       Days in Month:  29
       Leap Month:     0
       DayOfYear:      20
       DayOfMonth:     20
       DayOfWeek:      Wednesday
 
    After adding two years and ten months and one day:
       Era:            1
       Year:           1425
       Is Leap Year?   True
       Days In Year:   355
       Month:          11
       Months in Year: 12
       Days in Month:  30
       Leap Month:     0
       DayOfYear:      317
       DayOfMonth:     21
       DayOfWeek:      Sunday
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
 	  
# Sets a DateTime to April 3, 2002 of the Gregorian calendar.
 $MyDT = New-Object System.DateTime 2002, 4, 3, (New-Object System.Globalization.GregorianCalendar)
  
# Creates an instance of the UmAlQuraCalendar.
$MyCal = New-Object System.Globalization.UmAlQuraCalendar
# Display properties of the calendar
"Um Al Qura Calendar"
"Algorithm Type          : {0}" -f $MyCal.AlgorithmType
"Eras in Calendar        : {0}" -f $MyCal.Eras.count
"Is read only?           : {0}" -f $MyCal.IsReadOnly
"Max Supported Date/Time : {0}" -f $MyCal.MaxSupportedDateTime
"Min Supported Date/Time : {0}" -f $MyCal.MinSupportedDateTime
"Two Digit Year Max      : {0}" -f $MyCal.TwoDigitYearMax
""
 
# Display the values of the DateTime.
 "April 3, 2002 of the Gregorian calendar equals the following in the UmAlQura calendar:" 
DisplayValues $MyCal $MyDT 

# Adds two years and ten months and one Day.
$MyDT = $MyCal.AddYears( $MyDT, 2 )
$MyDT = $MyCal.AddMonths($MyDT, 10 )
$MyDT = $MyCal.AddDays($MyDT, 1 )
 
# Display the values of the DateTime.
"After adding two years and ten months and one day:"
DisplayValues $MyCal $MyDT
