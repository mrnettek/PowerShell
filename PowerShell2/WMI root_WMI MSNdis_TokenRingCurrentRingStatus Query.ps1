$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_TokenRingCurrentRingStatus -computername $computer -namespace $namespace
