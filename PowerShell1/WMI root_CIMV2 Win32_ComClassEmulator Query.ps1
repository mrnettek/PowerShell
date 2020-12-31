$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ComClassEmulator -computername $computer -namespace $namespace
