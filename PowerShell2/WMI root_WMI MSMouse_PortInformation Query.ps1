$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSMouse_PortInformation -computername $computer -namespace $namespace
