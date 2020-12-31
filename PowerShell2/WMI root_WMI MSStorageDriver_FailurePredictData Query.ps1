$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSStorageDriver_FailurePredictData -computername $computer -namespace $namespace
