$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class BatteryStaticData -computername $computer -namespace $namespace
