$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_CurrentPacketFilter -computername $computer -namespace $namespace
