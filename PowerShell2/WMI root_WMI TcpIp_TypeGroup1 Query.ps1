$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class TcpIp_TypeGroup1 -computername $computer -namespace $namespace
