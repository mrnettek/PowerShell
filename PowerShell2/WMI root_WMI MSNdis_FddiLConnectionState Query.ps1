$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_FddiLConnectionState -computername $computer -namespace $namespace
