$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_AtmReceiveCellsOk -computername $computer -namespace $namespace
