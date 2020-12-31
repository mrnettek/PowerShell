$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_EthernetOneTransmitCollision -computername $computer -namespace $namespace
