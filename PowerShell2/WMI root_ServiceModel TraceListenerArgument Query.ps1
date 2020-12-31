$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class TraceListenerArgument -computername $computer -namespace $namespace
