$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SystemUsers -computername $computer -namespace $namespace
