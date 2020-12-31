<#
.SYNOPSIS
    This script displays dates using the Japanese calander.
.DESCRIPTION
    This script creates a new date and time object, then displays 
	things using the Japanese calendar. I have changed the original
    script slightly to show the different eras in use. 
.NOTES
    File Name  : get-japanesedate.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2009/06/get-japanesedateps1.html
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.globalization.japanesecalendar.getyear.aspx
.EXAMPLE
    PSH [C:\foo]: .\get-japanesedate.ps1'
    April 3, 1875 of the Gregorian calendar equals the following in the Japanese calendar:
       Era:        1
       Year:       8
       Month:      4
       DayOfYear:  93
       DayOfMonth: 3
       DayOfWeek:  Saturday
 
    After adding 138 years and 10 months:
       Era:        4
       Year:       26
       Month:      2
       DayOfYear:  34
       DayOfMonth: 3
       DayOfWeek:  Monday
#>
##
# start of script
##

# Helper function
function DisplayJapaneseDateValue{
Param ( $DT ) #
# create a Japenese calendar
$cal=new-object System.Globalization.JapaneseCalendar
 
 # display dates using that calendar
"   Era:        {0}" -f $Cal.GetEra($DT) 
"   Year:       {0}" -f $Cal.GetYear($DT) 
"   Month:      {0}" -f $Cal.GetMonth($DT)
"   DayOfYear:  {0}" -f $Cal.GetDayOfYear($DT)
"   DayOfMonth: {0}" -f $Cal.GetDayOfMonth($DT)
"   DayOfWeek:  {0}" -f $Cal.GetDayOfWeek($DT) 
""
}
 
# Set a DateTime to April 3, 1875 of the Gregorian calendar. 
# This date is in the Meiji era (era 1)
$myDT = new-object System.DateTime 1875, 4, 3,(New-Object System.Globalization.GregorianCalendar)
 
# Display the values of the DateTime
"April 3, 1875 of the Gregorian calendar equals the following in the Japanese calendar:" 
DisplayJapaneseDateValue $myDT 
 
# Add 138 years and 10 months
# This takes the date into the Heisei era (era 4)
$myDT = $myCal.AddYears( $myDT, 138 )
$myDT = $myCal.AddMonths($myDT, 10 )
 
# Displays the values of the DateTime.
 "After adding 138 years and 10 months:" 
DisplayJapaneseDateValue $myDT 
# end of script