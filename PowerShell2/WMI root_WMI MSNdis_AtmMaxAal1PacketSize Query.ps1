$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_AtmMaxAal1PacketSize -computername $computer -namespace $namespace
