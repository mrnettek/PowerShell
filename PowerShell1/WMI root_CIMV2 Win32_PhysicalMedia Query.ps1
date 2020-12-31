$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PhysicalMedia -computername $computer -namespace $namespace
