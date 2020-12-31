$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_Tcpip_UDP -computername $computer -namespace $namespace
