$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class WebGetAttribute -computername $computer -namespace $namespace
