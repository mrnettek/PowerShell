$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Thread_TypeGroup1 -computername $computer -namespace $namespace
