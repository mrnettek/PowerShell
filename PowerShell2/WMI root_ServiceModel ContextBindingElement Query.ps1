$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class ContextBindingElement -computername $computer -namespace $namespace
