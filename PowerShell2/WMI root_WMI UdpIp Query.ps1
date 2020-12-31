$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class UdpIp -computername $computer -namespace $namespace
