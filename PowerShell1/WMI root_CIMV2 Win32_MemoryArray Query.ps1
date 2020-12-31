$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_MemoryArray -computername $computer -namespace $namespace
