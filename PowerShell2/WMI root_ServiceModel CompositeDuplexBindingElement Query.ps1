$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class CompositeDuplexBindingElement -computername $computer -namespace $namespace
