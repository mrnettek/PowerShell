$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MS1394_PortDriverInformation -computername $computer -namespace $namespace
