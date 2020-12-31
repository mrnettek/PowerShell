$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_DiskDrive -computername $computer -namespace $namespace
