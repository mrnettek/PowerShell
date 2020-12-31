$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class MetadataExporter -computername $computer -namespace $namespace
