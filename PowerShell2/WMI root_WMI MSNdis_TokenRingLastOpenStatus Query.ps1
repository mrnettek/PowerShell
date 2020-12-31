$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_TokenRingLastOpenStatus -computername $computer -namespace $namespace
