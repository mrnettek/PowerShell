$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_FddiShortCurrentAddress -computername $computer -namespace $namespace
