$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_FddiLongMulticastList -computername $computer -namespace $namespace
