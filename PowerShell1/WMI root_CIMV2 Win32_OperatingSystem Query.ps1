$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_OperatingSystem -computername $computer -namespace $namespace
