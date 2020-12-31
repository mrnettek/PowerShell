$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class BatteryTagChange -computername $computer -namespace $namespace
