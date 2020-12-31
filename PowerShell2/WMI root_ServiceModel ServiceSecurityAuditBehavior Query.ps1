$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class ServiceSecurityAuditBehavior -computername $computer -namespace $namespace
