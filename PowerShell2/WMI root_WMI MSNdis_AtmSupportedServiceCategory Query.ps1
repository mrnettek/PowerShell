$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_AtmSupportedServiceCategory -computername $computer -namespace $namespace
