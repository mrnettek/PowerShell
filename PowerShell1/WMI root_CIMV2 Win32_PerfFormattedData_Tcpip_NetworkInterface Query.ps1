$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_Tcpip_NetworkInterface -computername $computer -namespace $namespace
