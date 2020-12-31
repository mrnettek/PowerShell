$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class CreateWorkerThread -computername $computer -namespace $namespace
