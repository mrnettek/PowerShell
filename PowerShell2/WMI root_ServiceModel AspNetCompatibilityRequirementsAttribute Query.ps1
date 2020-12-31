$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class AspNetCompatibilityRequirementsAttribute -computername $computer -namespace $namespace
