$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class SslStreamSecurityBindingElement -computername $computer -namespace $namespace
