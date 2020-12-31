$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class UdpIp_TypeGroup1 -computername $computer -namespace $namespace
