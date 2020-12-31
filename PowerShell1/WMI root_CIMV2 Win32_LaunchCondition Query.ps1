$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_LaunchCondition -computername $computer -namespace $namespace
