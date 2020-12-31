$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class WorkflowOperationBehavior -computername $computer -namespace $namespace
