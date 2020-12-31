$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TSPermissionsSetting -computername $computer -namespace $namespace
