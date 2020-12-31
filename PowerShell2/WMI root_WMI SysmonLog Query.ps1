$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class SysmonLog -computername $computer -namespace $namespace
