$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_StatusLinkSpeedChange -computername $computer -namespace $namespace
