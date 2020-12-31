$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class WorkflowRuntimeBehavior -computername $computer -namespace $namespace
