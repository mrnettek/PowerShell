$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_MemoryDeviceLocation -computername $computer -namespace $namespace
