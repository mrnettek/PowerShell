$computer = "LocalHost" 
$namespace = "root\aspnet" 
Get-WmiObject -class AuthenticationSuccessAuditEvent -computername $computer -namespace $namespace
