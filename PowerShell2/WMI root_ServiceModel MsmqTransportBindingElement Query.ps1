$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class MsmqTransportBindingElement -computername $computer -namespace $namespace
