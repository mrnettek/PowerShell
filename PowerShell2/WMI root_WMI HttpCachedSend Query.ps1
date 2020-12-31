$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class HttpCachedSend -computername $computer -namespace $namespace
