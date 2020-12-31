$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class TraceListener -computername $computer -namespace $namespace
