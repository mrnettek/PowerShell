$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_AtmTransmitCellsOk -computername $computer -namespace $namespace
