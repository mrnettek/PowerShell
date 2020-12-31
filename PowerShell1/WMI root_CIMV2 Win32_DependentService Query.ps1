$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_DependentService -computername $computer -namespace $namespace
