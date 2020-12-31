$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_PerfNet_ServerWorkQueues -computername $computer -namespace $namespace
