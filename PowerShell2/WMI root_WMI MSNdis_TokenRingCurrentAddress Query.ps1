$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_TokenRingCurrentAddress -computername $computer -namespace $namespace
