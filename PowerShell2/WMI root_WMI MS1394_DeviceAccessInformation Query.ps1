$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MS1394_DeviceAccessInformation -computername $computer -namespace $namespace
