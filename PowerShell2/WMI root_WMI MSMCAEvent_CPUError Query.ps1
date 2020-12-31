$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSMCAEvent_CPUError -computername $computer -namespace $namespace
