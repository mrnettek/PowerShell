$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class HttpTransportBindingElement -computername $computer -namespace $namespace
