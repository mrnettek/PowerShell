$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_CIMLogicalDeviceCIMDataFile -computername $computer -namespace $namespace
