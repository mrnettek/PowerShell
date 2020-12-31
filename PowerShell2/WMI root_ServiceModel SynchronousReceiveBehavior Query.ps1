$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class SynchronousReceiveBehavior -computername $computer -namespace $namespace
