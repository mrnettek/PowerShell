$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ProtocolBinding -computername $computer -namespace $namespace
