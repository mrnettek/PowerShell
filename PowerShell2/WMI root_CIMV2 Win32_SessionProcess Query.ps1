$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SessionProcess -computername $computer -namespace $namespace
