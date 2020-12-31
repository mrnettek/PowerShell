$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class UnretireWorkerThread -computername $computer -namespace $namespace
