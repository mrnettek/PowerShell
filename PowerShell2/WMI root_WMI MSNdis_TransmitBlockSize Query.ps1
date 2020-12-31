$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_TransmitBlockSize -computername $computer -namespace $namespace
