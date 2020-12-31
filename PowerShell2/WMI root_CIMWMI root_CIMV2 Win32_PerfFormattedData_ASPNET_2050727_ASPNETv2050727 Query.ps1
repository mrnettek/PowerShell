$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_ASPNET_2050727_ASPNETv2050727 -computername $computer -namespace $namespace
