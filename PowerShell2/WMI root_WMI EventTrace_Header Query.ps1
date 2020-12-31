$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class EventTrace_Header -computername $computer -namespace $namespace
