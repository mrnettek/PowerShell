$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_StatusMediaConnect -computername $computer -namespace $namespace
