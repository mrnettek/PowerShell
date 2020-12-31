$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_Environment -computername $computer -namespace $namespace
