$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class HWConfig -computername $computer -namespace $namespace
