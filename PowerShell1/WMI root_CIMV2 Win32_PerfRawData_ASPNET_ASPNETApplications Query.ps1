$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_ASPNET_ASPNETApplications -computername $computer -namespace $namespace
