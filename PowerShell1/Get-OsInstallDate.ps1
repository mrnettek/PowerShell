<#
.SYNOPSIS
    This script gets/displays the Sysgtem Uptime after
    converting it from WEBM time/date format 
.DESCRIPTION
    This script creates an instance of a SWbemDateTime object, 
    gets the OS install date and converts the date to a more
    useful format.
.NOTES
    File Name  : Get-OSInstallDate.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/aa393687%28VS.85%29.aspx
.EXAMPLE
    Psh [C:\foo]> .\Get-OsInstallDate.ps1
    This OS was installed in the year 2008
    Full installation date (VT_DATE format) is 4/9/2008 8:17:23 PM
    Full installation date (FILETIME format) is 128522458430000000

#>

# Create swbemdatetime object
$datetime = New-Object -ComObject WbemScripting.SWbemDateTime

#  Get OS installation time and assign to datetime object
$os = Get-WmiObject -Class Win32_OperatingSystem
$dateTime.Value = $os.InstallDate

# Now display the time
"This OS was installed in the year {0}"           -f $dateTime.Year
"Full installation date (VT_DATE format) is {0}"  -f $dateTime.GetVarDate()
"Full installation date (FILETIME format) is {0}" -f $dateTime.GetFileTime() 
##