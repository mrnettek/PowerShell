$computer = "LocalHost" 
$namespace = "root\aspnet" 
Get-WmiObject -class BaseEvent -computername $computer -namespace $namespace
