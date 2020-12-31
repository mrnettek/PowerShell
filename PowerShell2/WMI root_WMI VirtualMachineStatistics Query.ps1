$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class VirtualMachineStatistics -computername $computer -namespace $namespace
