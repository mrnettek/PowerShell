$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_CoDriverVersion -computername $computer -namespace $namespace
