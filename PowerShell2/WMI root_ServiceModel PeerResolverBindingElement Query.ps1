$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class PeerResolverBindingElement -computername $computer -namespace $namespace
