$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSStorageDriver_FailurePredictEvent -computername $computer -namespace $namespace
