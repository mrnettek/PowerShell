$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_AtmMaxActiveVciBits -computername $computer -namespace $namespace
