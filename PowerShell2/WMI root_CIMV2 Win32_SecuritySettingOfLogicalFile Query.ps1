$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SecuritySettingOfLogicalFile -computername $computer -namespace $namespace
