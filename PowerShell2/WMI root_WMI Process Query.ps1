$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Process -computername $computer -namespace $namespace
