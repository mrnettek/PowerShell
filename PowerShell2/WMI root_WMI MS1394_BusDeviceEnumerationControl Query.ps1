$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MS1394_BusDeviceEnumerationControl -computername $computer -namespace $namespace
