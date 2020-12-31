$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_ASPNET_114322_ASPNETAppsv114322 -computername $computer -namespace $namespace
