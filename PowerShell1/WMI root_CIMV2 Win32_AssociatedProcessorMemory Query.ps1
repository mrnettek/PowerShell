$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_AssociatedProcessorMemory -computername $computer -namespace $namespace
