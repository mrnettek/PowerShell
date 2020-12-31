<#
.SYNOPSIS
    Creates a new Event Log
.DESCRIPTION
    This script first checks to see if a log called NewPSHLog exists. if not, it creates
	it then exits. if the log exists, the script writes an entry ot the log and then
	displays the log entries. A separate script clears and deletes the log!
.NOTES
    File Name  : New-CustomEventLog.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    First time the script runs:
	PSH [C:\foo]: .\New-CustomEventLog.ps1'
    CreatedEventSource
	Exiting, execute the script a second time to use the source.
	
	Second time the script runs:
	PSH [C:\foo]: .\New-CustomEventLog.ps1'
    PowerShell Eventlog exists

       Index Time          EntryType   Source      InstanceID Message
       ----- ----          ---------   ------      ---------- -------
          12 Feb 22 16:11  Information NewPshLog            0 Writing to new PowerShell even...
#>

###
# Start of Script
###

if (![system.diagnostics.eventlog]::SourceExists("NewPSHLog"))  {

# An event log source should not be created and immediately used.
# There is a latency time to enable the source, it should be created
# prior to executing the application that uses the source.
# So let's execute this sample a second time to use the new source.
  [system.diagnostics.EventLog]::CreateEventSource("MySource", "NewPSHLog")
  "CreatedEventSource"
            
# The source is created.  Exit the application to allow it to be registered.
 "Exiting, execute the script a second time to use the source."
  return
}
else {
"NewPSHLog Eventlog exists"
}

# With log created, create an EventLog instance and assign its source.
$mylog = new-object System.Diagnostics.Eventlog
$myLog.Source = "MySource"

# Write an informational entry to the event log.    
$myLog.WriteEntry("Writing to new PowerShell event log.")

# Display log events
Get-EventLog "NewPSHLog"
# End of Script