$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PNPAllocatedResource -computername $computer -namespace $namespace
