$computer = "LocalHost" 
$namespace = "root\aspnet" 
Get-WmiObject -class AuditEvent -computername $computer -namespace $namespace
