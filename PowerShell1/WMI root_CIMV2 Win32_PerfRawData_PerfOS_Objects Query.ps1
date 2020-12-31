$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_PerfOS_Objects -computername $computer -namespace $namespace
