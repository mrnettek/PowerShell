$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class TransactionFlowAttribute -computername $computer -namespace $namespace
