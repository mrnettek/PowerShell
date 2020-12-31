$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class TransportSecurityBindingElement -computername $computer -namespace $namespace
