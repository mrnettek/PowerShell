$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ClassInfoAction -computername $computer -namespace $namespace
