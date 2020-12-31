$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class ClientCredentials -computername $computer -namespace $namespace
