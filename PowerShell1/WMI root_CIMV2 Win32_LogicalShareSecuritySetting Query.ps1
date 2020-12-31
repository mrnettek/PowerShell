$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_LogicalShareSecuritySetting -computername $computer -namespace $namespace
