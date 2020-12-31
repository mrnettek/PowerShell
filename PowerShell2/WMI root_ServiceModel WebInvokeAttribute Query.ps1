$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class WebInvokeAttribute -computername $computer -namespace $namespace
