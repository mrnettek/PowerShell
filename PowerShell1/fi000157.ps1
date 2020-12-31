$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_NETDataProviderforSqlServer_NETDataProviderforSqlServer -computername $computer -namespace $namespace
