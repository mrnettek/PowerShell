$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSStorageDriver_ATAPISmartData -computername $computer -namespace $namespace
