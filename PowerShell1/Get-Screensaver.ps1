<#
.SYNOPSIS
    Determine if a computer screen saver requires a password.
.DESCRIPTION
    This script is a re-write of script 2 on the MSDN site (see
	below for link). This script also displays the user name for
	each desktop and the screen saver executable.
.NOTES
    File Name  : Get-Screensaver.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Script published to:
    http://www.pshscripts.blogspot.com
	Adapted from MSDN:
	http://msdn.microsoft.com/en-us/library/aa394591(VS.85).aspx
.EXAMPLE
    PS c:\foo> .\Get-Screensaver.ps1
	5 desktops found as follows
    Desktop      : NT AUTHORITY\SYSTEM
    Screen Saver : logon.scr
    Secure       : False

    Desktop      : NT AUTHORITY\LOCAL SERVICE
    Screen Saver : %SystemRoot%\System32\logon.scr
    Secure       : False

    Desktop      : NT AUTHORITY\NETWORK SERVICE
    Screen Saver : %SystemRoot%\System32\logon.scr
    Secure       : False

    Desktop      : Cookham\tfl
    Screen Saver : %Systemroot%\tflscreensaver.scr
    Secure       : False

    Desktop      : .DEFAULT
    Screen Saver : logon.scr
    Secure       : False
#>

##
#  Start of script
##

$Computer = "."
$Desktops = Get-WMIObject -class Win32_Desktop -ComputerName $computer
"{0} desktops found as follows" -f $desktops.count
foreach ($desktop in $desktops) {
"Desktop      : {0}"  -f $Desktop.Name
"Screen Saver : {0}"  -f $desktop.ScreensaverExecutable
"Secure       : {0} " -f $desktop.ScreenSaverSecure
""
}
# End of Script