$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_Tcpip_ICMP -computername $computer -namespace $namespace
