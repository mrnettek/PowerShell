$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MS1394_DeviceInformation -computername $computer -namespace $namespace
