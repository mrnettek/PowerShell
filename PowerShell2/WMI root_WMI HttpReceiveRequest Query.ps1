$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class HttpReceiveRequest -computername $computer -namespace $namespace
