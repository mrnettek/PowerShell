$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_MSDTCBridge3000_MSDTCBridge3000 -computername $computer -namespace $namespace
