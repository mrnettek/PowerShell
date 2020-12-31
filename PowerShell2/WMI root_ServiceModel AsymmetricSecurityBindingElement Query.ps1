$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class AsymmetricSecurityBindingElement -computername $computer -namespace $namespace
