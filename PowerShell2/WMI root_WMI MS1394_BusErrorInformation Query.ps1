$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MS1394_BusErrorInformation -computername $computer -namespace $namespace
