$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_MediaConnectStatus -computername $computer -namespace $namespace
