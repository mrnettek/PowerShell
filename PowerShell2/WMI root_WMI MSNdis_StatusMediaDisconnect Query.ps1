$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_StatusMediaDisconnect -computername $computer -namespace $namespace
