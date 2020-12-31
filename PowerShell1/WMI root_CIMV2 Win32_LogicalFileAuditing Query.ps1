$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_LogicalFileAuditing -computername $computer -namespace $namespace
