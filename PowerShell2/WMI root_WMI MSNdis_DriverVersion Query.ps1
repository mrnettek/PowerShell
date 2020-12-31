$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_DriverVersion -computername $computer -namespace $namespace
