$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_MappedLogicalDisk -computername $computer -namespace $namespace
