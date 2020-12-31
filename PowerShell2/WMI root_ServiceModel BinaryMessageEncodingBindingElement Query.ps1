$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class BinaryMessageEncodingBindingElement -computername $computer -namespace $namespace
