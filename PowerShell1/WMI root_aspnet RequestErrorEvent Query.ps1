$computer = "LocalHost" 
$namespace = "root\aspnet" 
Get-WmiObject -class RequestErrorEvent -computername $computer -namespace $namespace
