<#
.SYNOPSIS
    Gets details of any CD/DVD devices attached to a computer  
.DESCRIPTION
    This script uses the Win32_CDROMDrive class to display
	details of any CD/DVD drives. This is a re-write of
	a MSDN sample using PowerShell
.NOTES
    File Name  : Get-DVD.Ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    PowerShell script posted to:    
	http://www.pshscripts.blogspot.com
    MSDN script at:	
	http://msdn.microsoft.com/en-us/library/aa394587 
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\WMI\Get-Dvd.PS1'

    DeviceID                                                                     Description  Name
    --------                                                                     -----------  ----
    IDE\CDROMTSSTCORP_DVD+-RW_TS-H653B_______________D200____\5&1E5D3123&0&0.0.0 CD-ROM Drive TSSTcorp DVD+-RW TS...
    IDE\CDROMTSSTCORP_DVD-ROM_TS-H353B_______________D200____\5&3116E1C8&0&1.0.0 CD-ROM Drive TSSTcorp DVD-ROM TS...
    SCSI\CDROM&VEN_GF7300L&PROD_AZZ836K&REV_1.01\5&36E5972&1&000000              CD-ROM Drive GF7300L AZZ836K SCS...
#>

##
# Start of Script
##

# Get CD/DVD drives
$drives = Get-WmiObject -Class Win32_CDROMDrive

# Display CD info
$drives | Format-Table DeviceID, Description, Name -autosize
# End of Script