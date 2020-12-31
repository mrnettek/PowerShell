$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_PerfProc_ProcessAddressSpace_Costly -computername $computer -namespace $namespace
