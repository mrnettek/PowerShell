$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MS1394_BusDriverInformation -computername $computer -namespace $namespace
