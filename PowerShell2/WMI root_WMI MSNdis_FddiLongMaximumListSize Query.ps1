$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_FddiLongMaximumListSize -computername $computer -namespace $namespace
