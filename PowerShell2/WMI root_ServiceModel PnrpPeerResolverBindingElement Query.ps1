$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class PnrpPeerResolverBindingElement -computername $computer -namespace $namespace
