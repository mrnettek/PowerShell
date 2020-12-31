$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class BatteryRuntime -computername $computer -namespace $namespace
