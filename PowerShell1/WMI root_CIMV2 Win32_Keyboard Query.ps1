$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_Keyboard -computername $computer -namespace $namespace
