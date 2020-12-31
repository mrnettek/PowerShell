$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class Endpoint -computername $computer -namespace $namespace
