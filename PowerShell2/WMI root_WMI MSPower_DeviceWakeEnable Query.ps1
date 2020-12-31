$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSPower_DeviceWakeEnable -computername $computer -namespace $namespace
