$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_NotifyVcRemoval -computername $computer -namespace $namespace
