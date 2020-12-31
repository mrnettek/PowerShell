$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_EthernetPermanentAddress -computername $computer -namespace $namespace
