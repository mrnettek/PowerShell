$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_ReceiveBlockSize -computername $computer -namespace $namespace
