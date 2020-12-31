$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class WorkerThreadCreation -computername $computer -namespace $namespace
