$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_LogicalShareAuditing -computername $computer -namespace $namespace
