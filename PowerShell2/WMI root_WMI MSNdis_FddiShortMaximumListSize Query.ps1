$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_FddiShortMaximumListSize -computername $computer -namespace $namespace
