$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MS1394_BusInformation -computername $computer -namespace $namespace
