$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class BatteryTemperature -computername $computer -namespace $namespace
