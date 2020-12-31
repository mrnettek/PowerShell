$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class ReliableSessionBindingElement -computername $computer -namespace $namespace
