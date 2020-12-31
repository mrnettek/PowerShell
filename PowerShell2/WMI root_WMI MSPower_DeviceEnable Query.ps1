$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSPower_DeviceEnable -computername $computer -namespace $namespace
