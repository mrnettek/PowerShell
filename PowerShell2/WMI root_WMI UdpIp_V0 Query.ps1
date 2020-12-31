$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class UdpIp_V0 -computername $computer -namespace $namespace
