$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_AtmMaxActiveVcs -computername $computer -namespace $namespace
