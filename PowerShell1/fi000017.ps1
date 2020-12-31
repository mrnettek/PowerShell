$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_ServiceModelEndpoint3000_ServiceModelEndpoint3000 -computername $computer -namespace $namespace
