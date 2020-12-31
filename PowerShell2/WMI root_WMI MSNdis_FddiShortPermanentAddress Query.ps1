$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_FddiShortPermanentAddress -computername $computer -namespace $namespace
