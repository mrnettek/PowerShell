$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_BaseBoard -computername $computer -namespace $namespace
