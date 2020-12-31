$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSMCAEvent_PCIComponentError -computername $computer -namespace $namespace
