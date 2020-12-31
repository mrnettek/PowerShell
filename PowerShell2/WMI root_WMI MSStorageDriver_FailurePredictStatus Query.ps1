$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSStorageDriver_FailurePredictStatus -computername $computer -namespace $namespace
