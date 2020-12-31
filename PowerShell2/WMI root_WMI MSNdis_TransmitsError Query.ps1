$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_TransmitsError -computername $computer -namespace $namespace
