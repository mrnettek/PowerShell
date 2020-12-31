$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class MsmqBindingElementBase -computername $computer -namespace $namespace
