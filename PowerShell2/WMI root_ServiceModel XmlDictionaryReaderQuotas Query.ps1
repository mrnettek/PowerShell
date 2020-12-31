$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class XmlDictionaryReaderQuotas -computername $computer -namespace $namespace
