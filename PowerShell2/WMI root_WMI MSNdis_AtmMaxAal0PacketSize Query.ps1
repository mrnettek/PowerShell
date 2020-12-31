$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_AtmMaxAal0PacketSize -computername $computer -namespace $namespace
