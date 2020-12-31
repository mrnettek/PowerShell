$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_FddiUpstreamNodeLong -computername $computer -namespace $namespace
