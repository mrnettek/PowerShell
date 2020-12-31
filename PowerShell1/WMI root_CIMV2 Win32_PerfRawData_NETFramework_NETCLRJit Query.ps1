$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_NETFramework_NETCLRJit -computername $computer -namespace $namespace
