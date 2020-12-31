$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_FddiShortMulticastList -computername $computer -namespace $namespace
