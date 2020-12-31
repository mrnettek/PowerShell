$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_CoMacOptions -computername $computer -namespace $namespace
