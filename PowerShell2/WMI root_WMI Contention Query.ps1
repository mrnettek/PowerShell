$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Contention -computername $computer -namespace $namespace
