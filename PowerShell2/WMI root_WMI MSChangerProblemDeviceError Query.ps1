$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSChangerProblemDeviceError -computername $computer -namespace $namespace
