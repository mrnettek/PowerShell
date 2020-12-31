$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_SMSvcHost3000_SMSvcHost3000 -computername $computer -namespace $namespace
