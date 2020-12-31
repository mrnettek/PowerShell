$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class TransactedBatchingBehavior -computername $computer -namespace $namespace
