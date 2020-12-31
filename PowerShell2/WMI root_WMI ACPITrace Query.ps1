$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class ACPITrace -computername $computer -namespace $namespace
