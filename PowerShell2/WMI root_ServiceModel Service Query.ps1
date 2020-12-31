$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class Service -computername $computer -namespace $namespace
