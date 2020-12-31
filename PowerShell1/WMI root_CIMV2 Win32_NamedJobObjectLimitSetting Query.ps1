$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NamedJobObjectLimitSetting -computername $computer -namespace $namespace
