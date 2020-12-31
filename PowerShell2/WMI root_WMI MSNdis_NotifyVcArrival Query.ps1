$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_NotifyVcArrival -computername $computer -namespace $namespace
