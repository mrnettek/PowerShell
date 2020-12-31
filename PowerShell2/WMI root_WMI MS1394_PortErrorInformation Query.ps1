$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MS1394_PortErrorInformation -computername $computer -namespace $namespace
