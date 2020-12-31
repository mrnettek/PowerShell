$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_CoMediaConnectStatus -computername $computer -namespace $namespace
