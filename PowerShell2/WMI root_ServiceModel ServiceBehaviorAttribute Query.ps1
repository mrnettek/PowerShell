$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class ServiceBehaviorAttribute -computername $computer -namespace $namespace
