$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_PerfDisk_PhysicalDisk -computername $computer -namespace $namespace
