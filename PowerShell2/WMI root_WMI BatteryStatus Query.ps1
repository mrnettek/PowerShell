$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class BatteryStatus -computername $computer -namespace $namespace
