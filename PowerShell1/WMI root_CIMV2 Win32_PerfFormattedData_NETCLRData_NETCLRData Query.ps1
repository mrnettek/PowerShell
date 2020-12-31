$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_NETCLRData_NETCLRData -computername $computer -namespace $namespace
