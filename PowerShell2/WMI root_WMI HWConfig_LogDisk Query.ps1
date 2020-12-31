$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class HWConfig_LogDisk -computername $computer -namespace $namespace
