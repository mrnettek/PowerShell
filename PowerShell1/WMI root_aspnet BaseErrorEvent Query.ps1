$computer = "LocalHost" 
$namespace = "root\aspnet" 
Get-WmiObject -class BaseErrorEvent -computername $computer -namespace $namespace
