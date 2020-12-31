$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_AtmHardwareCurrentAddress -computername $computer -namespace $namespace
