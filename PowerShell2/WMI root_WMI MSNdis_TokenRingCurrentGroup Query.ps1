$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_TokenRingCurrentGroup -computername $computer -namespace $namespace
