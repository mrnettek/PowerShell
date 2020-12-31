$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class MsmqIntegrationBindingElement -computername $computer -namespace $namespace
