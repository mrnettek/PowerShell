$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PhysicalMemory -computername $computer -namespace $namespace
