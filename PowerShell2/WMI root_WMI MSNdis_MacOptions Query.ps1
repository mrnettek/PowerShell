$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_MacOptions -computername $computer -namespace $namespace
