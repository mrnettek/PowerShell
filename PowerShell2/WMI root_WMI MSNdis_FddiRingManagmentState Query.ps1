$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_FddiRingManagmentState -computername $computer -namespace $namespace
