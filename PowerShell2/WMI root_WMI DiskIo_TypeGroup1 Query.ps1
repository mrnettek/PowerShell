$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class DiskIo_TypeGroup1 -computername $computer -namespace $namespace
