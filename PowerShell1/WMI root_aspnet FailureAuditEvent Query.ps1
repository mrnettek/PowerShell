$computer = "LocalHost" 
$namespace = "root\aspnet" 
Get-WmiObject -class FailureAuditEvent -computername $computer -namespace $namespace
