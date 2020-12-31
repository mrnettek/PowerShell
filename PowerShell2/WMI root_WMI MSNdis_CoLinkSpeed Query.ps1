$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_CoLinkSpeed -computername $computer -namespace $namespace
