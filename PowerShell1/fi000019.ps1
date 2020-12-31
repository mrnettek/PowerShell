$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_ServiceModelService3000_ServiceModelService3000 -computername $computer -namespace $namespace
