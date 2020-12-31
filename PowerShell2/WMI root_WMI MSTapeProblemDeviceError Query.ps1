$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSTapeProblemDeviceError -computername $computer -namespace $namespace
