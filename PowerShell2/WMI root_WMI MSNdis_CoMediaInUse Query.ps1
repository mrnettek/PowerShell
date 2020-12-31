$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_CoMediaInUse -computername $computer -namespace $namespace
