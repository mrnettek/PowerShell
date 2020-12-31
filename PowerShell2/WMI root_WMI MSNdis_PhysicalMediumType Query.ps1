$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_PhysicalMediumType -computername $computer -namespace $namespace
