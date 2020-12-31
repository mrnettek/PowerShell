$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_MSDTC_DistributedTransactionCoordinator -computername $computer -namespace $namespace
