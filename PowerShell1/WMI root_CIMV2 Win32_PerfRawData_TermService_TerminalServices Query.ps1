$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_TermService_TerminalServices -computername $computer -namespace $namespace
