$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSMCAEvent_SystemEventError -computername $computer -namespace $namespace
