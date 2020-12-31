$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class Operation -computername $computer -namespace $namespace
