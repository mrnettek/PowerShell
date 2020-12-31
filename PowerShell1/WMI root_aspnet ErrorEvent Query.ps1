$computer = "LocalHost" 
$namespace = "root\aspnet" 
Get-WmiObject -class ErrorEvent -computername $computer -namespace $namespace
