$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_ASPNET_ASPNET -computername $computer -namespace $namespace
