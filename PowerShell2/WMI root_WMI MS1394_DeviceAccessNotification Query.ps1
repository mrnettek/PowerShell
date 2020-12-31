$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MS1394_DeviceAccessNotification -computername $computer -namespace $namespace
