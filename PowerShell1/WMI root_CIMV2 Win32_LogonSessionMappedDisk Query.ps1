$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_LogonSessionMappedDisk -computername $computer -namespace $namespace
