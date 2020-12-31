$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class WorkflowServiceBehavior -computername $computer -namespace $namespace
