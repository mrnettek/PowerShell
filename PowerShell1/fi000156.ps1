$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_NETDataProviderforSqlServer_NETDataProviderforSqlServer -computername $computer -namespace $namespace
