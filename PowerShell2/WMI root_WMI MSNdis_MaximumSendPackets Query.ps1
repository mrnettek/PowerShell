$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_MaximumSendPackets -computername $computer -namespace $namespace
