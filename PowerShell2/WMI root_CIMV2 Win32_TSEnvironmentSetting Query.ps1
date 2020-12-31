$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TSEnvironmentSetting -computername $computer -namespace $namespace
