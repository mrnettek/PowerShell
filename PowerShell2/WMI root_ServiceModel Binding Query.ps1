$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class Binding -computername $computer -namespace $namespace
