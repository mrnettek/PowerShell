$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class HttpRequest -computername $computer -namespace $namespace
