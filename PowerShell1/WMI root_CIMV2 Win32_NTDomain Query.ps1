$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NTDomain -computername $computer -namespace $namespace
