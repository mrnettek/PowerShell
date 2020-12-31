$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_NotifyAdapterRemoval -computername $computer -namespace $namespace
