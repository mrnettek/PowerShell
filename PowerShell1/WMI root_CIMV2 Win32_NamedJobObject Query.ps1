$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NamedJobObject -computername $computer -namespace $namespace
