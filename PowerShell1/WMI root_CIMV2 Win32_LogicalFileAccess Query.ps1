$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_LogicalFileAccess -computername $computer -namespace $namespace
