$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class HWConfig_NIC -computername $computer -namespace $namespace
