$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class PeerTransportBindingElement -computername $computer -namespace $namespace
