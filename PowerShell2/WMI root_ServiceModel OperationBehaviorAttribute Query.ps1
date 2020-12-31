$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class OperationBehaviorAttribute -computername $computer -namespace $namespace
