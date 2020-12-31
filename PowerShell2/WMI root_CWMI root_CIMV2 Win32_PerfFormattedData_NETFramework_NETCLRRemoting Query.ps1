$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_NETFramework_NETCLRRemoting -computername $computer -namespace $namespace
