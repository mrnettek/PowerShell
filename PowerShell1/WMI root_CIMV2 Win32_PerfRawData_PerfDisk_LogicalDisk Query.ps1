$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_PerfDisk_LogicalDisk -computername $computer -namespace $namespace
