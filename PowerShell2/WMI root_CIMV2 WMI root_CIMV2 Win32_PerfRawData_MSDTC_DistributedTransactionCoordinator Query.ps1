$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_MSDTC_DistributedTransactionCoordinator -computername $computer -namespace $namespace
