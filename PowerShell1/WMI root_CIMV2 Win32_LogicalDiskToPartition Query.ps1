$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_LogicalDiskToPartition -computername $computer -namespace $namespace
