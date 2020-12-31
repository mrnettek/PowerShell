$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_TransmitsOk -computername $computer -namespace $namespace
