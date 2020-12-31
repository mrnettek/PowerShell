$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_AtmMaxAal5PacketSize -computername $computer -namespace $namespace
