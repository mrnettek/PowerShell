$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ODBCDriverAttribute -computername $computer -namespace $namespace
