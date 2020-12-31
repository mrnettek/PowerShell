$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class MessageEncodingBindingElement -computername $computer -namespace $namespace
