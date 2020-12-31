$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_DiskPartition -computername $computer -namespace $namespace
