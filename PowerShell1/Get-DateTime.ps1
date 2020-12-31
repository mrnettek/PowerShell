<#
.SYNOPSIS
  Uses .NET formatting strings to format date/time values  
.DESCRIPTION
  Recreates an MSDN sample for displaying Date/TIme Format. See
  links section for pointer to original Sample.
.NOTES
    File Name  : Get-DateTime.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.EXAMPLE
    PS C:\foo> .\Get-DateTime.ps1
    FORMAT  en-gb EXAMPLE
    CHAR    VALUE OF ASSOCIATED PROPERTY, if ANY
      d     12/28/2008
            dd/MM/yyyy (ShortDatePattern)
      D     28 December 2008
            dd MMMM yyyy (LongDatePattern)
      f     28 December 2008 16:37
      F     28 December 2008 16:37:00
            dd MMMM yyyy HH:mm:ss (FullDateTimePattern)
      g     28/12/2008 16:37
      G     28/12/2008 16:37:00
      m     28 December
            dd MMMM (MonthDayPattern)
      M     28 December
            dd MMMM (MonthDayPattern)
      o     2008-12-28T16:37:00.4017900+00:00
      r     Sun, 28 Dec 2008 16:37:00 GMT
            ddd, dd MMM yyyy HH':'mm':'ss 'GMT' (RFC1123Pattern)
      R     Sun, 28 Dec 2008 16:37:00 GMT
            ddd, dd MMM yyyy HH':'mm':'ss 'GMT' (RFC1123Pattern)
      s     2008-12-28T16:37:00
            yyyy'-'MM'-'dd'T'HH':'mm':'ss (SortableDateTimePattern)
      t     16:37
            HH:mm (ShortTimePattern)
      T     16:37:00
            HH:mm:ss (LongTimePattern)
      u     2008-12-28 16:37:00Z
            yyyy'-'MM'-'dd HH':'mm':'ss'Z' (UniversalSortableDateTimePattern)
      U     28 December 2008 16:37:00\n
      y     December 2008
            MMMM yyyy (YearMonthPattern)
      Y     December 2008
            MMMM yyyy (YearMonthPattern)
.EXAMPLE
    PS C:\foo> Get-Help Get-DateTime.ps1
	Left as an exercise for the reader!
.LINK
    Script posted to:
	http://www.pshscripts.blogspot.com
	MSDN Sample Page showing C# original
	http://msdn.microsoft.com/en-us/library/system.globalization.datetimeformatinfo.aspx
#>

##
# Start of Script
##

# Create and initialise a DateTimeFormatInfo associated with the en-US culture.
$culture = [system.Globalization.CultureInfo]::CreateSpecificCulture("en-gb")
$dtfi   = $culture.DateTimeFormat

# Create a DateTime with the Gregorian date January 3, 2002 (year=2002, month=1, day=3).
# The Gregorian calendar is the default calendar for the en-GB culture.
$dt = get-date
"FORMAT  en-gb EXAMPLE"
"CHAR    VALUE OF ASSOCIATED PROPERTY, IF ANY" 
"  d     {0}       "   -f $DT.ToString("d", $DI) 
"        {0} {1}   "   -f $dtfi.ShortDatePattern, "(ShortDatePattern)" 
"  D     {0}       "   -f $dt.ToString("D", $DTFI) 
"        {0} {1}   "   -f $dtfi.LongDatePattern,  "(LongDatePattern)" 
"  f     {0}       "   -f $dt.ToString("f", $DTFI) 
"  F     {0}       "   -f $dt.ToString("F", $DTFI) 
"        {0} {1}   "   -f $dtfi.FullDateTimePattern, "(FullDateTimePattern)" 
"  g     {0}       "   -f $dt.ToString("g", $DTFI) 
"  G     {0}       "   -f $dt.ToString("G", $DTFI) 
"  m     {0}       "   -f $dt.ToString("m", $DTFI) 
"        {0} {1}   "   -f $dtfi.MonthDayPattern, "(MonthDayPattern)" 
"  M     {0}       "   -f $dt.ToString("M", $DTFI) 
"        {0} {1}   "   -f $dtfi.MonthDayPattern, "(MonthDayPattern)"
"  o     {0}       "   -f $dt.ToString("o", $DTFI) 
"  r     {0}       "   -f $dt.ToString("r", $DTFI) 
"        {0} {1}   "   -f $dtfi.RFC1123Pattern, "(RFC1123Pattern)" 
"  R     {0}       "   -f $dt.ToString("R", $DTFI) 
"        {0} {1}   "   -f $dtfi.RFC1123Pattern, "(RFC1123Pattern)" 
"  s     {0}       "   -f $dt.ToString("s", $DTFI) 
"        {0} {1}   "   -f $dtfi.SortableDateTimePattern, "(SortableDateTimePattern)" 
"  t     {0}       "   -f $dt.ToString("t", $DTFI) 
"        {0} {1}   "   -f $dtfi.ShortTimePattern, "(ShortTimePattern)" 
"  T     {0}       "   -f $dt.ToString("T", $DTFI) 
"        {0} {1}   "   -f $dtfi.LongTimePattern, "(LongTimePattern)" 
"  u     {0}       "   -f $dt.ToString("u", $DTFI) 
"        {0} {1}   "   -f $dtfi.UniversalSortableDateTimePattern, "(UniversalSortableDateTimePattern)" 
"  U     {0}\n     "   -f $dt.ToString("U", $DTFI) 
"  y     {0}       "   -f $dt.ToString("y", $DTFI) 
"        {0} {1}   "   -f $dtfi.YearMonthPattern, "(YearMonthPattern)" 
"  Y     {0}       "   -f $dt.ToString("Y", $DTFI) 
"        {0} {1}   "   -f $dtfi.YearMonthPattern, "(YearMonthPattern)" 
# End of Script