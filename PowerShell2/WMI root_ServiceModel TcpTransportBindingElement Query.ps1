$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class TcpTransportBindingElement -computername $computer -namespace $namespace
