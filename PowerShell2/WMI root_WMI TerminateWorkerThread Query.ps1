$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class TerminateWorkerThread -computername $computer -namespace $namespace
