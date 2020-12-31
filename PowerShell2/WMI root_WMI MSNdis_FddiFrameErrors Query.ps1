$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_FddiFrameErrors -computername $computer -namespace $namespace
