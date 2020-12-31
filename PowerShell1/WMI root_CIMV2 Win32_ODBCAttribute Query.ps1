$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ODBCAttribute -computername $computer -namespace $namespace
