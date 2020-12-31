$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ApplicationService -computername $computer -namespace $namespace
