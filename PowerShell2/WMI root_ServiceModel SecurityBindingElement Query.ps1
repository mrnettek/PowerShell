$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class SecurityBindingElement -computername $computer -namespace $namespace
