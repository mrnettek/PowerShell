$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_LinkSpeed -computername $computer -namespace $namespace
