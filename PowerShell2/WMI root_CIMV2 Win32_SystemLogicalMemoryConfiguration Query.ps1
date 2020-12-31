$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SystemLogicalMemoryConfiguration -computername $computer -namespace $namespace
