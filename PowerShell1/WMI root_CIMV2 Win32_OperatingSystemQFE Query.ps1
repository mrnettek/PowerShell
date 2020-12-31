$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_OperatingSystemQFE -computername $computer -namespace $namespace
