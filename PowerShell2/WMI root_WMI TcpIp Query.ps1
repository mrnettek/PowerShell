$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class TcpIp -computername $computer -namespace $namespace
