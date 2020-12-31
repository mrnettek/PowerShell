$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_CoTransmitPduErrors -computername $computer -namespace $namespace
