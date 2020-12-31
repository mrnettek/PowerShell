$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Monitor -computername $computer -namespace $namespace
