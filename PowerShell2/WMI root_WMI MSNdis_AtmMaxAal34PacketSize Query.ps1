$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_AtmMaxAal34PacketSize -computername $computer -namespace $namespace
