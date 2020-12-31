$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class BatteryStatusChange -computername $computer -namespace $namespace
