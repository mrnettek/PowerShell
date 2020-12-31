$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSStorageDriver_ScsiInfoExceptions -computername $computer -namespace $namespace
