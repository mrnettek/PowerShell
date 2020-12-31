$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_FddiDownstreamNodeLong -computername $computer -namespace $namespace
