$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_DiskQuota -computername $computer -namespace $namespace
