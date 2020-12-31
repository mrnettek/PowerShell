$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ODBCDataSourceSpecification -computername $computer -namespace $namespace
