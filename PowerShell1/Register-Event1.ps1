<#
.SYNOPSIS
    This script registers for a WMI event
.DESCRIPTION
    This script used PowerShell to register for then display
    an event. This script is a re-write on an MSDN Sample.
.NOTES
    File Name  : Register-Event1.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted tot:
        http://msdn.microsoft.com/en-us/library/aa393013%28VS.85%29.aspx
.EXAMPLE
    [PSH] C:\FOO> Register-Event1.ps1
    Waiting for events
    Log Event Occured
    EVENT MESSAGE
    A logon was attempted using explicit credentials.

    Subject:
 	Security ID:		S-1-5-21-2824006062-479960714-4144511058-1105
	Account Name:		tfl
    ...  -> Remainder snipped for brevity
   
#>

# Define event Query
$query = "SELECT * FROM __InstanceCreationEvent 
          WHERE TargetInstance ISA 'Win32_NTLogEvent' "

# Register for event - also specify an action that
# displays the log event when the event fires.
Register-WmiEvent -Source Demo1 -Query $query -Action {
                Write-Host "Log Event occured"
                $global:myevent = $event
                Write-Host "EVENT MESSAGE"
                Write-Host $event.SourceEventArgs.NewEvent.TargetInstance.Message}
# So wait
"Waiting for events"