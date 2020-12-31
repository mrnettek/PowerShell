$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TSClientSetting -computername $computer -namespace $namespace
