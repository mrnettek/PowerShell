$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSMCAEvent_MemoryError -computername $computer -namespace $namespace
