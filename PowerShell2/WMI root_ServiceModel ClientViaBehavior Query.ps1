$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class ClientViaBehavior -computername $computer -namespace $namespace
