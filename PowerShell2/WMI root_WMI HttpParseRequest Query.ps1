$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class HttpParseRequest -computername $computer -namespace $namespace
