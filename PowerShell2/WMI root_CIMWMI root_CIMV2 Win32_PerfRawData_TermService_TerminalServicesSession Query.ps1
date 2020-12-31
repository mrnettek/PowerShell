$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_TermService_TerminalServicesSession -computername $computer -namespace $namespace
