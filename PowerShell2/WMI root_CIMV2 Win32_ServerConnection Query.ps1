$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ServerConnection -computername $computer -namespace $namespace
