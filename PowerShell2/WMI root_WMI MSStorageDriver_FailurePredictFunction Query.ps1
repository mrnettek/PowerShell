$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSStorageDriver_FailurePredictFunction -computername $computer -namespace $namespace
