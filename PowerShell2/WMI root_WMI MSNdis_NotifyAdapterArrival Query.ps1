$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_NotifyAdapterArrival -computername $computer -namespace $namespace
