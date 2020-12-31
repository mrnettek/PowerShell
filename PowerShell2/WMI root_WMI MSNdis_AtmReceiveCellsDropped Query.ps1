$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_AtmReceiveCellsDropped -computername $computer -namespace $namespace
