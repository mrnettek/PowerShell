$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class PersistenceProviderBehavior -computername $computer -namespace $namespace
