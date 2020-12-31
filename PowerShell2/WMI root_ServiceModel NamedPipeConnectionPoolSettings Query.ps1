$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class NamedPipeConnectionPoolSettings -computername $computer -namespace $namespace
