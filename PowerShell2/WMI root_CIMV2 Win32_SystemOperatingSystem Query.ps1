$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SystemOperatingSystem -computername $computer -namespace $namespace
