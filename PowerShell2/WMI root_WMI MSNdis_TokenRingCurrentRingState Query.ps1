$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_TokenRingCurrentRingState -computername $computer -namespace $namespace
