$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_ReceiveBufferSpace -computername $computer -namespace $namespace
