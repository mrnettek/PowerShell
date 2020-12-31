$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_ReceivesOk -computername $computer -namespace $namespace
