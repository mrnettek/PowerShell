$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_FddiLongPermanentAddress -computername $computer -namespace $namespace
