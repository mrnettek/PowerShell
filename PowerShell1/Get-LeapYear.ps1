<#
.SYNOPSIS
    Demonstrates use of System.Datetime to determine leap year 
.DESCRIPTION
    This script creates four date objects and checks to see if
	the date is a leap year. The last object is today's date. 
.NOTES
    File Name  : Get-LeapYear.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS c:\foo> .\Get-LeapYear.ps1
	2000 is a leap year: True
    2002 is a leap year: False
    2004 is a leap year: True
    2009 is a leap year: False
#>

##
#  Start of script
##

# Create three specific date objects, plus today
$d1 = [system.datetime]  "Jan 1 2000"
$d2 = [System.datetime]  "Jan 1 2002"
$d3 = [System.datetime]  "Jan 1 2004"
$d4 = get-date

# Are they leap years?
"{0} is a leap year: {1}" -f $d1.year,([system.datetime]::isleapyear($d1.year))
"{0} is a leap year: {1}" -f $d2.year,([system.datetime]::isleapyear($d2.year))
"{0} is a leap year: {1}" -f $d3.year,([system.datetime]::isleapyear($d3.year))
"{0} is a leap year: {1}" -f $d4.year,([system.datetime]::isleapyear($d4.year))
# End Script