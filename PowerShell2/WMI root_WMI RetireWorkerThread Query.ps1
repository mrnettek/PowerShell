$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class RetireWorkerThread -computername $computer -namespace $namespace
