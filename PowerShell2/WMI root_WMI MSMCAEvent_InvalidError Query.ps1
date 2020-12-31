$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSMCAEvent_InvalidError -computername $computer -namespace $namespace
