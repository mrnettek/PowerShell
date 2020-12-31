$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_MaximumTotalSize -computername $computer -namespace $namespace
