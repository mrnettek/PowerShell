$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_AtmSupportedAalTypes -computername $computer -namespace $namespace
