$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_LogicalMemoryConfiguration -computername $computer -namespace $namespace
