$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class ServiceDebugBehavior -computername $computer -namespace $namespace
