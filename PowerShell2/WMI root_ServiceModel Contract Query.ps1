$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class Contract -computername $computer -namespace $namespace
