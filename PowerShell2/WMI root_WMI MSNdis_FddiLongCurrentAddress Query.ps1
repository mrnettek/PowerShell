$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_FddiLongCurrentAddress -computername $computer -namespace $namespace
