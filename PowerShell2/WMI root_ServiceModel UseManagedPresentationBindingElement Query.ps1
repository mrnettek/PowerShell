$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class UseManagedPresentationBindingElement -computername $computer -namespace $namespace
