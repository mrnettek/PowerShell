$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSMCAEvent_PCIBusError -computername $computer -namespace $namespace
