$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_MaximumFrameSize -computername $computer -namespace $namespace
