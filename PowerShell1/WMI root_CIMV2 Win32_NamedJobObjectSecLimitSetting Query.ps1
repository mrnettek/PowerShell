$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NamedJobObjectSecLimitSetting -computername $computer -namespace $namespace
