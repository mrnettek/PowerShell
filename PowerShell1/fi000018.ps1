$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_ServiceModelOperation3000_ServiceModelOperation3000 -computername $computer -namespace $namespace
