$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class WorkerThreadRetirement -computername $computer -namespace $namespace
