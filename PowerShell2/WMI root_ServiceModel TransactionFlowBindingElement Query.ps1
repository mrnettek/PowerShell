$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class TransactionFlowBindingElement -computername $computer -namespace $namespace
