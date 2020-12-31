$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class ServiceAuthorizationBehavior -computername $computer -namespace $namespace
