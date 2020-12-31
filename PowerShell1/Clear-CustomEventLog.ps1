<#
.SYNOPSIS
    Writes to then clears a custom event log
.DESCRIPTION
    This script opens an evnet log called NewPSHLog exists. It then writes some log
    entries then then retrieves them and displays a count. Finally the log is cleared and 
	shown to be cleared. A separate script (New-CustomEventLog.ps1 created the log). 
.NOTES
    File Name  : Clear-CustomEventLog.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Original script posted to:    
	http://www.pshscripts.blogspot.com
.EXAMPLE


#>	

###
# Start of Script
###

# First open the log
	

$mylog = new-object System.diagnostics.Eventlog
$myLog.Source = "NewPshLog"

# Write some new entries
$myLog.WriteEntry("Writing to new PowerShell event log again.")
$myLog.WriteEntry("Another new entry at $(get-date)")
$myLog.WriteEntry("A final Entry")

# Now display log
$log = get-eventlog "NewPSHLog"
"There are {0} Entries in NewPSHLog" -f $log.count
$log

# Now clear the log
$mylog.clear()

# Check deletions have occured
$log = get-eventlog "NewPSHLog"
"There are now {0} Entries in NewPSHLog" -f $log.count