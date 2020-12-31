<#
.SYNOPSIS
    Displays Desktop Size
.DESCRIPTION
    This script is a re-write of an MSDN sample. It uses
	the Win32_Desktop Monitor  WMI class to obtain the
	screen dimensions.
.NOTES
    File Name  : Get-DesktopResolution.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Script Posted To:
	http://www.pshscripts.blogspot.com
	Re-write of sample 3 at:
	http://msdn.microsoft.com/en-us/library/aa394591(VS.85).aspx
.EXAMPLE
    PS c:\foo> .\Get-DesktopResolution
    There are 4 Desktops on UK0N055 as follows:

    Desktop 1: Default Monitor
    Screen Height : 1200
    Screen Width  : 1920

    Desktop 2: Default Monitor
    Screen Height :
    Screen Width  :

    Desktop 3: Default Monitor
    Screen Height :
    Screen Width  :

    Desktop 4: Default Monitor
    Screen Height :
    Screen Width  :
#>

##
#  Start of script
##

# Get desktop information
$computer = "."
$desktops = Get-WmiObject -Class Win32_DesktopMonitor
$hostname = hostname

# Display desktop details
"There are {0} Desktops on {1} as follows:" -f $desktops.Count, $hostname
""
$i=1 # count of desktops on this system

foreach ($desktop in $desktops) {
"Desktop {0}: {1}" -f  $i++, $Desktop.Caption
"Screen Height : {0}" -f $desktop.ScreenHeight
"Screen Width  : {0}" -f $desktop.ScreenWidth
""
}
# End of Script