$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class BatteryFullChargedCapacity -computername $computer -namespace $namespace
