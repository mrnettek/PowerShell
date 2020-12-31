$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PhysicalMemoryLocation -computername $computer -namespace $namespace
