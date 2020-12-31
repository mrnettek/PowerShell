$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Thread_V0 -computername $computer -namespace $namespace
