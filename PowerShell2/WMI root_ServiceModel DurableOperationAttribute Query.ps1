$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class DurableOperationAttribute -computername $computer -namespace $namespace
