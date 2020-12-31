$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class HWConfig_PhyDisk -computername $computer -namespace $namespace
