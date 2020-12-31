$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class SuspendThread -computername $computer -namespace $namespace
