$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class DeliveryRequirementsAttribute -computername $computer -namespace $namespace
