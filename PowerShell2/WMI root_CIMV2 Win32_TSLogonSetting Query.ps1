$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TSLogonSetting -computername $computer -namespace $namespace
