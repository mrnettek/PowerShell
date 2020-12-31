$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_CacheMemory -computername $computer -namespace $namespace
