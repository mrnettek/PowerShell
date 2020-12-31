$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ParallelPort -computername $computer -namespace $namespace
