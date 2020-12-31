$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_PerfProc_JobObject -computername $computer -namespace $namespace
