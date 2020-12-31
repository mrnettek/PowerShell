$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class TextMessageEncodingBindingElement -computername $computer -namespace $namespace
