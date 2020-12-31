$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class ServiceTimeoutsBehavior -computername $computer -namespace $namespace
