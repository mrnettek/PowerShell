$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_PerfProc_FullImage_Costly -computername $computer -namespace $namespace
