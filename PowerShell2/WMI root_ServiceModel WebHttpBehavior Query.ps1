$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class WebHttpBehavior -computername $computer -namespace $namespace
