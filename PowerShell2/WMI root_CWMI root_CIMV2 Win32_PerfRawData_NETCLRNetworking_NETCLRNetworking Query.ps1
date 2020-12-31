$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_NETCLRNetworking_NETCLRNetworking -computername $computer -namespace $namespace
