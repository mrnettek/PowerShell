$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class WebMessageEncodingBindingElement -computername $computer -namespace $namespace
