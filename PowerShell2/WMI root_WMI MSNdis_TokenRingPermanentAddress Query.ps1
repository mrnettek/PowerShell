$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_TokenRingPermanentAddress -computername $computer -namespace $namespace
