$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_EthernetMoreTransmitCollisions -computername $computer -namespace $namespace
