$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class EventTraceEvent -computername $computer -namespace $namespace
