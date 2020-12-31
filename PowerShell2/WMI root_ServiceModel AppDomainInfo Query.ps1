$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class AppDomainInfo -computername $computer -namespace $namespace
