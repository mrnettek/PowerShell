$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ImplementedCategory -computername $computer -namespace $namespace
