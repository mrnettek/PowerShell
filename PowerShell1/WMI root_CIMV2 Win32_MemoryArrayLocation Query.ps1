$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_MemoryArrayLocation -computername $computer -namespace $namespace
