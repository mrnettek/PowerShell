$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class ConnectionOrientedTransportBindingElement -computername $computer -namespace $namespace
