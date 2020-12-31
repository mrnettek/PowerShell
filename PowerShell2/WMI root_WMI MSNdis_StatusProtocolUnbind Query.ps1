$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_StatusProtocolUnbind -computername $computer -namespace $namespace
