$computer = "LocalHost" 
$namespace = "root\aspnet" 
Get-WmiObject -class RequestEvent -computername $computer -namespace $namespace
