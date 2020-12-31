$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class CallbackBehavior -computername $computer -namespace $namespace
