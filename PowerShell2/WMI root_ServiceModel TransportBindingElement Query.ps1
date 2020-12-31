$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class TransportBindingElement -computername $computer -namespace $namespace
