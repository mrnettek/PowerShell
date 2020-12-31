$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Registry_V0 -computername $computer -namespace $namespace
