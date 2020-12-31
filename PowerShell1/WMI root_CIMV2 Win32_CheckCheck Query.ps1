$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_CheckCheck -computername $computer -namespace $namespace
