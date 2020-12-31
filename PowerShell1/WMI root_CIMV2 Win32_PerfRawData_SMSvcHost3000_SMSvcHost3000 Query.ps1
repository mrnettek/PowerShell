$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_SMSvcHost3000_SMSvcHost3000 -computername $computer -namespace $namespace
