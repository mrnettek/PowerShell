$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_TransmitBufferSpace -computername $computer -namespace $namespace
