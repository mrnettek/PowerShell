$computer = "LocalHost" 
$namespace = "root\aspnet" 
Get-WmiObject -class HeartbeatEvent -computername $computer -namespace $namespace
