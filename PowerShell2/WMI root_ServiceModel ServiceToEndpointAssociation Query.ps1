$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class ServiceToEndpointAssociation -computername $computer -namespace $namespace
