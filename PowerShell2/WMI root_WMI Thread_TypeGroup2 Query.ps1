$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Thread_TypeGroup2 -computername $computer -namespace $namespace
