$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class ServiceMetadataBehavior -computername $computer -namespace $namespace
