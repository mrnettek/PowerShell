$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class SuspendEE -computername $computer -namespace $namespace
