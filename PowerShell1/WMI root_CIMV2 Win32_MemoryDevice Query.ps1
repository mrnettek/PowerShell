$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_MemoryDevice -computername $computer -namespace $namespace
