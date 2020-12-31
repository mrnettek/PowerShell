$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ODBCDriverSpecification -computername $computer -namespace $namespace
