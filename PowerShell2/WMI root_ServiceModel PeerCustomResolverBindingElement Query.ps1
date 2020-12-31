$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class PeerCustomResolverBindingElement -computername $computer -namespace $namespace
