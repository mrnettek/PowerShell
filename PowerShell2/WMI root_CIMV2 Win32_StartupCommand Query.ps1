$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_StartupCommand -computername $computer -namespace $namespace
