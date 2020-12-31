$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class OneWayBindingElement -computername $computer -namespace $namespace
