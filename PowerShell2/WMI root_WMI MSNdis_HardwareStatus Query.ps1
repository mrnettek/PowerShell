$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_HardwareStatus -computername $computer -namespace $namespace
