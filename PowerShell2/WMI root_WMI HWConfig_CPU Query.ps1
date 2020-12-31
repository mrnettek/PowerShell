$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class HWConfig_CPU -computername $computer -namespace $namespace
