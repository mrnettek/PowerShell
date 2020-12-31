$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class MtomMessageEncodingBindingElement -computername $computer -namespace $namespace
