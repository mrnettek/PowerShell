$computer = "LocalHost" 
$namespace = "root\aspnet" 
Get-WmiObject -class ViewStateFailureAuditEvent -computername $computer -namespace $namespace
