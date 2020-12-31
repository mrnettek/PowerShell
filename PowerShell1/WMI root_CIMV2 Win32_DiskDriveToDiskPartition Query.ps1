$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_DiskDriveToDiskPartition -computername $computer -namespace $namespace
