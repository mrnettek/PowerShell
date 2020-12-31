$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class DurableServiceAttribute -computername $computer -namespace $namespace
