$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_EthernetReceiveErrorAlignment -computername $computer -namespace $namespace
