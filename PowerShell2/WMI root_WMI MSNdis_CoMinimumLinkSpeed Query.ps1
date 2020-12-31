$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_CoMinimumLinkSpeed -computername $computer -namespace $namespace
