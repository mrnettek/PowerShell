$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_ASPNET_114322_ASPNETv114322 -computername $computer -namespace $namespace
