$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class NamedPipeTransportBindingElement -computername $computer -namespace $namespace
