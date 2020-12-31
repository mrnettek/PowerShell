$computer = "LocalHost" 
$namespace = "root\aspnet" 
Get-WmiObject -class ApplicationLifetimeEvent -computername $computer -namespace $namespace
