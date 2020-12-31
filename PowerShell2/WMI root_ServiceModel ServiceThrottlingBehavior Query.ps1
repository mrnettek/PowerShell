$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class ServiceThrottlingBehavior -computername $computer -namespace $namespace
