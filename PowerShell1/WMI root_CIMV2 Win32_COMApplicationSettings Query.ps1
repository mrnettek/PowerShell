$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_COMApplicationSettings -computername $computer -namespace $namespace
