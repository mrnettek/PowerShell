$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class PeerSecuritySettings -computername $computer -namespace $namespace
