$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class Channel -computername $computer -namespace $namespace
