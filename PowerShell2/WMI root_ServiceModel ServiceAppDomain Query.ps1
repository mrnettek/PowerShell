$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class ServiceAppDomain -computername $computer -namespace $namespace
