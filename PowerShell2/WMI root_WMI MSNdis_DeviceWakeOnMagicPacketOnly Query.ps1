$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_DeviceWakeOnMagicPacketOnly -computername $computer -namespace $namespace
