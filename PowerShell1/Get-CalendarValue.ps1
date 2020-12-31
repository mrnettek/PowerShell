<#
.SYNOPSIS
    This script displays values from a date/time object before/after adding time to the object.
.DESCRIPTION
    This script uses System.Globalization features to create a gregorian calendar based
    DateTime object, set to a particular date, then displays the values on this
    object. Next, the script adds 5 to all key date fields in the calendar object 
    thus +5 years, +5 months, etc. The script then prints out the values from the
    updated object.
.NOTES
    File Name  : get-calendarvalue.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.globalization.calendar.adddays(VS.85).aspx
		(and elsewhere)
.EXAMPLE

PSH [C:\foo]: .'E:\PowerShellScriptLib\System.Globalization\Get-CalendarValue.ps1
April 3, 2002 of the Gregorian calendar:
   Era:          1
   Year:         2002
   Month:        4
   DayOfYear:    93
   DayOfMonth:   3
   DayOfWeek:    Wednesday
   Hour:         0
   Minute:       0
   Second:       0
   Milliseconds: 0

After adding 5 to each component of the DateTime:
   Era:          1
   Year:         2007
   Month:        10
   DayOfYear:    286
   DayOfMonth:   13
   DayOfWeek:    Saturday
   Hour:         5
   Minute:       5
   Second:       5
   Milliseconds: 5

.PARAMETER bar
#>
 
# helper function
function DisplayValues{
param ($DT)

"   Era:          {0}" -f $Cal.GetEra( $DT )
"   Year:         {0}" -f $Cal.GetYear( $DT ) 
"   Month:        {0}" -f $Cal.GetMonth( $DT ) 
"   DayOfYear:    {0}" -f $Cal.GetDayOfYear( $DT )
"   DayOfMonth:   {0}" -f $Cal.GetDayOfMonth( $DT )
"   DayOfWeek:    {0}" -f $Cal.GetDayOfWeek( $DT )
"   Hour:         {0}" -f $Cal.GetHour( $DT ) 
"   Minute:       {0}" -f $Cal.GetMinute( $DT )
"   Second:       {0}" -f $Cal.GetSecond( $DT )
"   Milliseconds: {0}" -f $Cal.GetMilliseconds( $DT )
""
 }

##
# Start of script
##

# Sets a DateTime to April 3, 2002 of the Gregorian calendar.
$myDT = New-Object System.DateTime 2002, 4, 3, (New-Object System.Globalization.GregorianCalendar)

# Uses the default calendar of the InvariantCulture
$Cal = [System.Globalization.CultureInfo]::InvariantCulture.Calendar

# Display the values of the DateTime.
"April 3, 2002 of the Gregorian calendar:"
DisplayValues $myDT

# Add 5 to every component of the DateTime object.
$myDT = $Cal.AddYears( $myDT, 5 )
$myDT = $Cal.AddMonths( $myDT, 5 )
$myDT = $Cal.AddWeeks( $myDT, 5 )
$myDT = $Cal.AddDays( $myDT, 5 )
$myDT = $Cal.AddHours( $myDT, 5 )
$myDT = $Cal.AddMinutes( $myDT, 5 )
$myDT = $Cal.AddSeconds( $myDT, 5 )
$myDT = $Cal.AddMilliseconds( $myDT, 5 )

# Displays the values of the DateTime.
"After adding 5 to each component of the DateTime:" 
DisplayValues $myDT
# End of script