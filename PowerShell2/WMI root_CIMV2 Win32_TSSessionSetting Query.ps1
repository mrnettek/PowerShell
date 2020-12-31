$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TSSessionSetting -computername $computer -namespace $namespace
