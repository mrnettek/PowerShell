$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSStorageDriver_FailurePredictThresholds -computername $computer -namespace $namespace
