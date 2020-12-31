$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_ASPNET_2050727_ASPNETAppsv2050727 -computername $computer -namespace $namespace
