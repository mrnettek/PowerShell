$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class XmlSerializerOperationBehavior -computername $computer -namespace $namespace
