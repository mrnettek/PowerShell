$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_EthernetCurrentAddress -computername $computer -namespace $namespace
