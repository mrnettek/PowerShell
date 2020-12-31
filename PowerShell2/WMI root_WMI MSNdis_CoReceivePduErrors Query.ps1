$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_CoReceivePduErrors -computername $computer -namespace $namespace
