$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class HttpsTransportBindingElement -computername $computer -namespace $namespace
