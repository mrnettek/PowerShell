$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class HttpSendComplete -computername $computer -namespace $namespace
