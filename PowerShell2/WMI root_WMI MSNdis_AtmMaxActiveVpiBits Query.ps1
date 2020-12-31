$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_AtmMaxActiveVpiBits -computername $computer -namespace $namespace
