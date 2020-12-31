$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_StatusMediaSpecificIndication -computername $computer -namespace $namespace
