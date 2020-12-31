$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class PeerTransportSecuritySettings -computername $computer -namespace $namespace
