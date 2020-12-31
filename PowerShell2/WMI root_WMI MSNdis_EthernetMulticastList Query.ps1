$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_EthernetMulticastList -computername $computer -namespace $namespace
