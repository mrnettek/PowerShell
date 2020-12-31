$computer = "LocalHost" 
$namespace = "root\aspnet" 
Get-WmiObject -class SuccessAuditEvent -computername $computer -namespace $namespace
