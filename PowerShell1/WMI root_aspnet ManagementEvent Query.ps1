$computer = "LocalHost" 
$namespace = "root\aspnet" 
Get-WmiObject -class ManagementEvent -computername $computer -namespace $namespace
