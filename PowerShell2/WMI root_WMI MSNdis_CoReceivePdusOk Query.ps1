$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_CoReceivePdusOk -computername $computer -namespace $namespace
