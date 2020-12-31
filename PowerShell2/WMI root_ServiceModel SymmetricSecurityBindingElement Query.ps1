$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class SymmetricSecurityBindingElement -computername $computer -namespace $namespace
