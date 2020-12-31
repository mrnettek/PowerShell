$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MS1394_BusEventNotification -computername $computer -namespace $namespace
