$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class DataContractSerializerOperationBehavior -computername $computer -namespace $namespace
