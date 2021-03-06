<#
.SYNOPSIS
    This script re-implements and MSDN sample that shows
    the different Date/Time Formatting characters and
    how they are used in formatting date/time objects.
.DESCRIPTION
    This script Creates a date/time object, then shows formatting
    using the key Date/Time Format strings.
.NOTES
    File Name  : Show-DateTimeFormatInfo.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/system.globalization.datetimeformatinfo.aspx
.EXAMPLE
    Left as an exercise for the reader.
    
#>


# Create and initialise a DateTimeFormatInfo associated with the en-US culture.
 $MyDTFI = (new-object System.Globalization.CultureInfo "en-US", $false ).DateTimeFormat

# Create a DateTime with the Gregorian date January 3, 2002 (year=2002, month=1, day=3)
# The Gregorian calendar is the default calendar for the en-US culture
$MyDT = new-object System.DateTime  2002, 1, 3 

# Display the format pattern associated with each format character
"FORMAT  en-US EXAMPLE"
"CHAR    VALUE OF ASSOCIATED PROPERTY, IF ANY" 
"  d     {0}"          -f $MyDT.ToString("d", $MyDTFI) 
"        {0}    {1}`n" -f $MyDTFI.ShortDatePattern, "(ShortDatePattern)"
"  D     {0}"          -f $MyDT.ToString("D", $MyDTFI)
"        {0}    {1}`n" -f $MyDTFI.LongDatePattern, "(LongDatePattern)"
"  f     {0}`n"        -f $MyDT.ToString("f", $MyDTFI)
"  F     {0}"          -f $MyDT.ToString("F", $MyDTFI)
"        {0}    {1}`n" -f $MyDTFI.FullDateTimePattern, "(FullDateTimePattern)"
"  g     {0}`n"        -f $MyDT.ToString("g", $MyDTFI)
"  G     {0}`n"        -f $MyDT.ToString("G", $MyDTFI)
"  m     {0}"          -f $MyDT.ToString("m", $MyDTFI)
"        {0}    {1}`n" -f $MyDTFI.MonthDayPattern, "(MonthDayPattern)"
"  M     {0}"          -f $MyDT.ToString("M", $MyDTFI) 
"        {0}    {1}`n" -f $MyDTFI.MonthDayPattern, "(MonthDayPattern)"
"  o     {0}`n"        -f $MyDT.ToString("o", $MyDTFI)
"  r     {0}"          -f $MyDT.ToString("r", $MyDTFI) 
"        {0}    {1}`n" -f $MyDTFI.RFC1123Pattern, "(RFC1123Pattern)"
"  R     {0}"          -f $MyDT.ToString("R", $MyDTFI) 
"        {0}    {1}`n" -f $MyDTFI.RFC1123Pattern, "(RFC1123Pattern)"
"  s     {0}"          -f $MyDT.ToString("s", $MyDTFI) 
"        {0}    {1}`n" -f $MyDTFI.SortableDateTimePattern, "(SortableDateTimePattern)"
"  t     {0}"          -f $MyDT.ToString("t", $MyDTFI) 
"        {0}    {1}`n" -f $MyDTFI.ShortTimePattern, "(ShortTimePattern)"
"  T     {0}"          -f $MyDT.ToString("T", $MyDTFI) 
"        {0}    {1}`n" -f $MyDTFI.LongTimePattern, "(LongTimePattern)"
"  u     {0}"          -f $MyDT.ToString("u", $MyDTFI) 
"        {0}    {1}`n" -f $MyDTFI.UniversalSortableDateTimePattern, "(UniversalSortableDateTimePattern)"
"  U     {0}`n"        -f $MyDT.ToString("U", $MyDTFI)
"  y     {0}"          -f $MyDT.ToString("y", $MyDTFI) 
"        {0}    {1}`n" -f $MyDTFI.YearMonthPattern, "(YearMonthPattern)"
"  Y     {0}"          -f $MyDT.ToString("Y", $MyDTFI) 
"        {0}    {1}`n" -f $MyDTFI.YearMonthPattern, "(YearMonthPattern)"