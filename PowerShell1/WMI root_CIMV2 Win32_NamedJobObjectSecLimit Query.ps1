$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NamedJobObjectSecLimit -computername $computer -namespace $namespace
