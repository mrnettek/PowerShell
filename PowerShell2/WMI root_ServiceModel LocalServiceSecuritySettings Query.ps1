$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class LocalServiceSecuritySettings -computername $computer -namespace $namespace
