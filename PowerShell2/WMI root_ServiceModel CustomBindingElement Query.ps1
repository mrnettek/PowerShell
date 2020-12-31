$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class CustomBindingElement -computername $computer -namespace $namespace
